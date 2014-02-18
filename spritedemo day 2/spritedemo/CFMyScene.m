//
//  CFMyScene.m
//  spritedemo
//
//  Created by Brad on 2/17/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "CFMyScene.h"

@interface CFMyScene ()

{
    int _nextFlappy;
    double _nextFlappySpawn;
}

@property (strong,nonatomic) SKSpriteNode *mainCharacter;
@property (strong,nonatomic) NSMutableArray *flappyArray;

#define kNumFlappys 10

@end
@implementation CFMyScene

static const uint32_t eagleCategory =  0x1 << 0;
static const uint32_t flappyCategory =  0x1 << 1;

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        _nextFlappy = 0;
        self.physicsWorld.contactDelegate = self;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        
        for (int i = 0; i <2; i++)
        {
            SKSpriteNode *bg = [SKSpriteNode spriteNodeWithImageNamed:@"background"];
            bg.anchorPoint = CGPointZero;
            bg.position = CGPointMake(i * bg.size.width,0);
            bg.name = @"background";
            [self addChild:bg];
        }
        
        self.mainCharacter = [SKSpriteNode spriteNodeWithImageNamed:@"eagle"];
        self.mainCharacter.position = CGPointMake(50, 150);
        [self addChild:self.mainCharacter];
        
        self.mainCharacter.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.mainCharacter.size];
        self.mainCharacter.physicsBody.dynamic = YES;
        self.mainCharacter.physicsBody.affectedByGravity =YES;
        self.mainCharacter.physicsBody.allowsRotation = NO;
        self.mainCharacter.physicsBody.mass = 0.02;
        self.mainCharacter.physicsBody.categoryBitMask = eagleCategory;
        self.mainCharacter.physicsBody.contactTestBitMask = flappyCategory;
        
        
        self.flappyArray = [[NSMutableArray alloc]initWithCapacity:kNumFlappys];
        
        for (int i = 0;i <kNumFlappys; i++)
        {
            SKSpriteNode *flappy = [SKSpriteNode spriteNodeWithImageNamed:@"flappy"];
            flappy.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:flappy.size];
            flappy.physicsBody.categoryBitMask = flappyCategory;
            flappy.physicsBody.dynamic = NO;
            flappy.hidden = YES;
            [self.flappyArray addObject:flappy];
            [self addChild:flappy];
        }
        
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.mainCharacter.physicsBody setVelocity:CGVectorMake(0, 0)];
    [self.mainCharacter.physicsBody applyImpulse:CGVectorMake(0, 7)];
}

-(float)randomValueBetween:(float)low andValue:(float)high
{
    return (((float) arc4random() / 0xFFFFFFFFu) * (high - low)) + low;
}

-(void)update:(CFTimeInterval)currentTime {
    
    [self enumerateChildNodesWithName:@"background" usingBlock:^(SKNode *node, BOOL *stop) {
        SKSpriteNode *bg = (SKSpriteNode *)node;
        bg.position = CGPointMake(bg.position.x - 5, bg.position.y);
        
        if (bg.position.x <= -bg.size.width)
        {
            bg.position = CGPointMake(bg.position.x + bg.size.width * 2, bg.position.y);
        }
    
    }];
    
    double curTime = CACurrentMediaTime();
    
    if (curTime > _nextFlappySpawn)
    {
        float randSeconds = [self randomValueBetween:0.20f andValue:1.0f];
        _nextFlappySpawn = randSeconds + curTime;
        
        float randY = [self randomValueBetween:0.0f andValue:self.frame.size.height];
        float randDuration = [self randomValueBetween:5.0f andValue:8.0f];
        
        SKSpriteNode *flappy = self.flappyArray[_nextFlappy];
        _nextFlappy++;
        
        if (_nextFlappy >= self.flappyArray.count)
        {
            _nextFlappy = 0;
        }
        
        [flappy removeAllActions];
        
        flappy.position = CGPointMake(self.frame.size.width + flappy.size.width
                                      /2, randY);
        flappy.hidden = NO;
        
        CGPoint location = CGPointMake(-600, randY);
        
        SKAction *moveAction = [SKAction moveTo:location duration:randDuration];
        SKAction *doneAction = [SKAction runBlock:^{
            flappy.hidden = YES;
        }];
        
        SKAction *moveFlappyActionWithDone = [SKAction sequence:@[moveAction,doneAction]];
        
        
        [flappy runAction:moveFlappyActionWithDone];
        
    }
    
//    for (SKSpriteNode *flappy in self.flappyArray)
//    {
//        if ([self.mainCharacter intersectsNode:flappy])
//        {
//
//            [self.mainCharacter removeFromParent];
//            
//            NSString *explosionPath = [[NSBundle mainBundle] pathForResource:@"Explosion" ofType:@"sks"];
//            SKEmitterNode *burstNode = [NSKeyedUnarchiver unarchiveObjectWithFile:explosionPath];
//            
//            burstNode.position = self.mainCharacter.position;
//            burstNode.particleLifetime = .1;
//            //[self addChild:burstNode];
//        }
//    }
}

-(void)didBeginContact:(SKPhysicsContact *)contact
{
    
    NSLog(@"contact");
}

@end
