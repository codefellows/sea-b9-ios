//
//  Hole_in_the_Wall_TestsTests.m
//  Hole in the Wall TestsTests
//
//  Created by John Clem on 2/18/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Hole.h"
#import "Wall.h"
#import "Player.h"
#import "Level.h"

@interface Hole_in_the_Wall_TestsTests : XCTestCase
{
    NSInteger nextLevel;
}
@property (nonatomic) NSInteger testNumber;

@end

@implementation Hole_in_the_Wall_TestsTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.testNumber = 502;
    
}

- (void)tearDown
{
//    self.testNumber = 502;
    [super tearDown];
}

- (void)testWallHasHole
{
    Hole *myHole = [Hole new];
    Wall *myWall = [[Wall alloc] initWithHole:myHole];
    
    XCTAssertNotNil(myWall.hole, @"A Wall should have a Hole");
}

- (void)testCorrectLevelNumber
{
    Level *level = [Level levelNumber:self.testNumber];
    
    NSString *failureMessage = @"+ levelNumber: should return a level with the suppied number";

    XCTAssertEqual(level.number, self.testNumber, @"%@", failureMessage);
}

- (void)testMaxPlayerCount
{
    Level *level = [Level levelNumber:4];
    
    for (int i=0; i<4; i++) {
        Player *newPlayer = [Player new];
        XCTAssertNoThrow([level addPlayer:newPlayer], @"levels should allow up to 4 players to be added");
    }

    Player *newPlayer = [Player new];
    [level addPlayer:newPlayer];
    
    XCTAssertTrue(level.players.count <= 4, @"Levels should not have more than 4 players");
}

@end
