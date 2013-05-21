//
//  BirdsMasterViewController.h
//  BirdWatching
//
//  Created by Philippa Bentley on 17/05/2013.
//  Copyright (c) 2013 Philippa Bentley. All rights reserved.
//

#import <UIKit/UIKit.h>

//forward declaration
@class BirdSightingDataController;

@interface BirdsMasterViewController : UITableViewController

@property (strong, nonatomic) BirdSightingDataController *dataController;

@end
