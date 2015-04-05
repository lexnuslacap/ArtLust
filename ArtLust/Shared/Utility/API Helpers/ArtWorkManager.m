//
//  ArtWorkManager.m
//  ArtLust
//
//  Created by EJ Lacap on 4/5/15.
//  Copyright (c) 2015 Lexnus. All rights reserved.
//

#import "ArtWorkManager.h"
#import "ArtWork.h"

static ArtWorkManager *sharedManager = nil;

@implementation ArtWorkManager

+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [super sharedManager];
    });
    
    return sharedManager;
}

- (void) setupResponseDescriptors {
    [super setupResponseDescriptors];
    
    RKResponseDescriptor *authenticatedUserResponseDescriptors = [RKResponseDescriptor responseDescriptorWithMapping:[self artworkMapping] method:RKRequestMethodGET pathPattern:@"artworks" keyPath:nil statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    [self addResponseDescriptor:authenticatedUserResponseDescriptors];
}

-(RKObjectMapping *) artworkMapping {
    RKObjectMapping *artworkMapping = [RKObjectMapping mappingForClass:[ArtWork class]];
    [artworkMapping addAttributeMappingsFromDictionary:@{@"title":@"title", @"id":@"artWorkId",@"artistName":@"artistName",@"seenDate":@"seenDate",@"imageUrl":@"imageUrl",@"locationAddress":@"address"}];
    
    return artworkMapping;
}

- (void) fetchAllArtWorks:(void (^)(NSArray *artWorks))success failure:(void (^)(RKObjectRequestOperation *operation, NSError *error))failure{
    
    [self getObjectsAtPath:@"artworks" parameters:nil success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
       
        if(success){
            success([mappingResult array]);
        }
        
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        if(failure){
            failure(operation, error);
        }
    }];
    
}

@end
