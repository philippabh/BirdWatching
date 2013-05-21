//
//  BirdsDetailViewController.h
//  BirdWatching
//
//  Created by Philippa Bentley on 17/05/2013.
//  Copyright (c) 2013 Philippa Bentley. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdSighting;

@interface BirdsDetailViewController : UITableViewController /* using a table to display the bird sighting details provides a user experience that is consistent with the master scene */

@property (strong, nonatomic) BirdSighting *sighting;
@property (weak, nonatomic) IBOutlet UILabel *birdNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end
