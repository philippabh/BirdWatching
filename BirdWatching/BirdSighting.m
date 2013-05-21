//
//  BirdSighting.m
//  BirdWatching
//
//  Created by Philippa Bentley on 17/05/2013.
//  Copyright (c) 2013 Philippa Bentley. All rights reserved.
//

#import "BirdSighting.h"

@implementation BirdSighting

- (id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date
{
    self = [super init];
    if (self)
    {
        _name = name;
        _location = location;
        _date = date;
        return self;
    }
    
    return nil;
}


@end
