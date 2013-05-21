//
//  BirdSightingDataController.m
//  birdWatchingApp
//
//  Created by Philippa Bentley on 16/05/2013.
//  Copyright (c) 2013 Philippa Bentley. All rights reserved.
//

#import "BirdSightingDataController.h"
#import "BirdSighting.h"

//declare a class extension (a method private to the class)
@interface BirdSightingDataController ()
- (void) initializeDefaultDataList;
@end

@implementation BirdSightingDataController

//Assigns a new mutable array to the sightingList variable. Then, it uses some default data to create a new BirdSighting object and passes it to the addBirdSightingWithSighting method, which adds the new sighting to the master list.
- (void) initializeDefaultDataList
{
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    self.masterBirdSightingList = sightingList;
    BirdSighting *sighting;
    NSDate *today = [NSDate date];
    
    sighting = [[BirdSighting alloc] initWithName:@"Pigeon" location:@"Everywhere" date:today];
    [self addBirdSightingWithSighting:sighting];
    
}

//implement a custom setter method for the master list property...
- (void) setMasterBirdSightingList:(NSMutableArray *)newList
{
    if (_masterBirdSightingList != newList)
    {
        _masterBirdSightingList = [newList mutableCopy];
    }
}


//most objects don’t need to do anything other than call [super init]. Here, the data controller class needs to create the master list.

//Initialise data controller object...
- (id) init
{
    if (self = [super init]) //if super init is successful,
    {
        [self initializeDefaultDataList]; //call method,
        return self; //return the newly initialized instance of itself.
    }
    return nil;
}


- (NSUInteger) countofList
{
    return [self.masterBirdSightingList count]; //count is an NSArray method returning total no. of items in an array
}

- (BirdSighting *) objectInListAtIndex:(NSUInteger)theIndex
{
    return [self.masterBirdSightingList objectAtIndex:theIndex];
}

//This method creates and initializes a new BirdSighting object by sending to the initWithName:location:date: method the name and location the user entered, along with today’s date. Then, the method adds the new BirdSighting object to the array.
- (void) addBirdSightingWithSighting:(BirdSighting *)sighting
{
    [self.masterBirdSightingList addObject:sighting];
}

@end
