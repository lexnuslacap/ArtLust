//
//  FirstViewController.m
//  ArtLust
//
//  Created by Edward Lacap on 3/16/15.
//  Copyright (c) 2015 Lexnus. All rights reserved.
//

#import "FirstViewController.h"
#import "ArtWorkManager.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[ArtWorkManager sharedManager] fetchAllArtWorks:^(NSArray *artWorks) {
        NSLog(@"%@", artWorks);
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        NSLog(@"%@", error.localizedDescription);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
