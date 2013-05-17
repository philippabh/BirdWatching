//
//  BirdsDetailViewController.h
//  BirdWatching
//
//  Created by Philippa Bentley on 17/05/2013.
//  Copyright (c) 2013 Philippa Bentley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BirdsDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
