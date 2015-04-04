//
//  ALObjectManager.h
//  ArtLust
//
//  Created by Edward Lacap on 4/4/15.
//  Copyright (c) 2015 Lexnus. All rights reserved.
//

#import "RKObjectManager.h"

@interface ALObjectManager : RKObjectManager

+ (instancetype) sharedManager;

- (void) setupRequestDescriptors;
- (void) setupResponseDescriptors;

@end
