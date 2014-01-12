//
//  SDBParsedObjects.m
//  SportsDB Mock
//
//  Created by Michael Frain on 1/12/14.
//  Copyright (c) 2014 SportsDB. All rights reserved.
//

#import "SDBParsedObjects.h"

@implementation SDBParsedObjects

- (NSArray *)csvParseObjects {
    NSArray *csvArray = [[NSArray alloc] init];
    
    csvArray = [NSArray arrayWithContentsOfCSVFile:@"/Users/michaelfrain-mobileforming/Desktop/SportsDB Mock/SportsDB Mock/nfl_players a-z.csv"];
    
    return csvArray;
}

@end
