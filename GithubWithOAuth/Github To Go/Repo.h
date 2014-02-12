//
//  Repo.h
//  Github To Go
//
//  Created by Brad on 2/11/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface Repo : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * html_url;

-(id)initWithEntity:(NSEntityDescription *)entity insertIntoManagedObjectContext:(NSManagedObjectContext *)context withJsonDictionary:(NSDictionary *)json;

@end
