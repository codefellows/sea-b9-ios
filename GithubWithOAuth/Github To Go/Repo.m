//
//  Repo.m
//  Github To Go
//
//  Created by Brad on 2/11/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "Repo.h"


@implementation Repo

@dynamic name;
@dynamic html_url;

-(id)initWithEntity:(NSEntityDescription *)entity insertIntoManagedObjectContext:(NSManagedObjectContext *)context withJsonDictionary:(NSDictionary *)json
{
    self = [super initWithEntity:entity insertIntoManagedObjectContext:context];
    if (self) {
        [self parseJsonDictionary:json];
        
    }
    
    return self;
}
-(void)parseJsonDictionary:(NSDictionary *)json
{
    self.name = [json objectForKey:@"name"];
    self.html_url = [json objectForKey:@"html_url"];
    
    [self.managedObjectContext save:nil];
}


@end
