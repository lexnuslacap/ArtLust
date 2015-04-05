//
//  ArtWorkManager.h
//  ArtLust
//
//  Created by EJ Lacap on 4/5/15.
//  Copyright (c) 2015 Lexnus. All rights reserved.
//

#import "ALObjectManager.h"

@interface ArtWorkManager : ALObjectManager

- (void) fetchAllArtWorks:(void (^)(NSArray *artWorks))success failure:(void (^)(RKObjectRequestOperation *operation, NSError *error))failure;

@end
