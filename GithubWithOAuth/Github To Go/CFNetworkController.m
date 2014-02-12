//
//  CFNetworkController.m
//  Github To Go
//
//  Created by John Clem on 2/3/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFNetworkController.h"

@implementation CFNetworkController

#define GITHUB_OAUTH_URL @"https://github.com/login/oauth/authorize?client_id=%@&redirect_uri=%@&scope=%@"
#define GITHUB_CLIENT_ID @"ecfdf7b200408eba24d8"
#define GITHUB_SECRET_ID @"0d04196a709ebaa86a07b66d309070e5d807ec69"
#define GITHUB_REDIRECT @"githubtogo://git_callback"
#define GITHUB_OAUTH_POST_URL @"https://github.com/login/oauth/access_token"


- (NSMutableArray *)reposForSearchString:(NSString *)searchString
{
    searchString = [NSString stringWithFormat:@"https://api.github.com/search/repositories?q=%@", searchString];
    NSURL *searchURL = [NSURL URLWithString:searchString];
    NSData *searchData = [NSData dataWithContentsOfURL:searchURL];
    NSError *error;
    NSMutableDictionary *searchDict = [NSJSONSerialization JSONObjectWithData:searchData
                                                                      options:NSJSONReadingMutableContainers
                                                                        error:&error];
    if (error) {
        NSLog(@"Error deserializing JSON: %@", error.debugDescription);
    } else {
        NSMutableArray *repos = [searchDict objectForKey:@"items"];
        return repos;
    }
    
    return [NSMutableArray arrayWithObject:error];
}

-(void)beginOAuthAccess
{
    NSString *myURL = [NSString stringWithFormat:GITHUB_OAUTH_URL,GITHUB_CLIENT_ID,GITHUB_REDIRECT,@"user,repo"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:myURL]];
}

-(void)handleCallBackURL:(NSURL *)url
{
    NSString *code = [self convertURLToCode:url];
    
    NSString *post = [NSString stringWithFormat:@"client_id=%@&client_secret=%@&code=%@&redirect_uri=%@",GITHUB_CLIENT_ID,GITHUB_SECRET_ID,code,GITHUB_REDIRECT];
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d",[postData length]];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
    [request setURL:[NSURL URLWithString:GITHUB_OAUTH_POST_URL]];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    NSURLResponse *response;
    NSError *error;
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    self.accessToken = [self convertResponseIntoToken:responseData];
    
    [self fetchUsersRepos];
    
    
}

-(void)fetchUsersRepos
{
    NSString *stringURL = [NSString stringWithFormat:@"https://api.github.com/user/repos"];
    
    NSURL *myURL =[NSURL URLWithString:stringURL];
    NSData *responseData = [NSData dataWithContentsOfURL:myURL];
    
    NSError *error;
    NSMutableDictionary *repoDictionary = [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingMutableContainers error:&error];
    
    NSLog(@"%@",repoDictionary);
    
    
}

-(NSString *)convertURLToCode:(NSURL *)url
{
    NSString *query = [url query];
    NSArray *components = [query componentsSeparatedByString:@"="];
    NSLog(@"%@",components);
    NSString *code = [components lastObject];
    return code;
}
-(NSString *)convertResponseIntoToken:(NSData *)data
{
    NSString *tokenResponse = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
    
    NSArray *components = [tokenResponse componentsSeparatedByString:@"&"];
    NSString *access_token = [components firstObject];
    NSArray *components2 = [access_token componentsSeparatedByString:@"="];
    
    return [components2 lastObject];
    
}

@end
