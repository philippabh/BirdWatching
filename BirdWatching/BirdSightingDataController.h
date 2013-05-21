//
//  BirdSightingDataController.h
//  BirdWatching
//
//  Created by Philippa Bentley on 17/05/2013.
//  Copyright (c) 2013 Philippa Bentley. All rights reserved.
//

#import <Foundation/Foundation.h>

//add a forward declaration (a statement that tells the compiler to treat a symbol as a class symbol). In effect, it “promises” the compiler that the project contains a definition for this class elsewhere.
@class BirdSighting;


@interface BirdSightingDataController : NSObject

//The copy attribute specifies that a copy of the object should be used for assignment. Later, in the implementation file, you’ll create a custom setter method that ensures that the array copy is also mutable.
@property (nonatomic, copy) NSMutableArray *masterBirdSightingList;

- (NSUInteger) countofList;
- (BirdSighting *) objectInListAtIndex:(NSUInteger) theIndex;
- (void) addBirdSightingWithSighting:(BirdSighting *)sighting;

@end
