//
//  ALObjectManager.m
//  ArtLust
//
//  Created by Edward Lacap on 4/4/15.
//  Copyright (c) 2015 Lexnus. All rights reserved.
//

#import "ALObjectManager.h"

@implementation ALObjectManager

+ (instancetype)sharedManager {
    NSURL *url = [NSURL URLWithString:WEB_API_BASE_URL];
    
    ALObjectManager *sharedManager  = [self managerWithBaseURL:url];
    [sharedManager setRequestSerializationMIMEType:RKMIMETypeJSON];
    [[sharedManager HTTPClient] setDefaultHeader:@"X-ZUMO-APPLICATION" value:WEB_API_APPLICATION_KEY];
    /*
     THIS CLASS IS MAIN POINT FOR CUSTOMIZATION:
     - setup HTTP headers that should exist on all HTTP Requests
     - override methods in this class to change default behavior for all HTTP Requests
     - define methods that should be available across all object managers
     */
    
    [sharedManager setupRequestDescriptors];
    [sharedManager setupResponseDescriptors];
    
    
    return sharedManager;
}

- (void) setupRequestDescriptors {
}

- (void) setupResponseDescriptors {
}

@end
