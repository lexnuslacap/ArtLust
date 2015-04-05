//
//  ArtWork.h
//  ArtLust
//
//  Created by EJ Lacap on 4/5/15.
//  Copyright (c) 2015 Lexnus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ArtWork : NSObject

@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSString * imageUrl;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * artWorkId;
@property (nonatomic, retain) NSString * artistName;
@property (nonatomic, retain) NSDate * seenDate;


@end
