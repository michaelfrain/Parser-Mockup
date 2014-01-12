//
//  SportsDB_MockTests.m
//  SportsDB MockTests
//
//  Created by Michael Frain on 1/12/14.
//  Copyright (c) 2014 SportsDB. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CHCSVParser.h"
#import "SDBParsedObjects.h"

@interface SportsDB_MockTests : XCTestCase

@end

@implementation SportsDB_MockTests

- (void)testParsedCsvExample {
    SDBParsedObjects *parsedObject = [[SDBParsedObjects alloc] init];
    NSArray *parsedArray = [[NSArray alloc] init];
    
    parsedArray = [parsedObject csvParseObjects];
    NSArray *mockObject = [[NSArray alloc] init];
    mockObject = [parsedArray objectAtIndex:25];
    XCTAssertEqualObjects([mockObject objectAtIndex:0], @"Frank Abruzzino");
    XCTAssertEqualObjects([mockObject objectAtIndex:1], @"Colgate");
    XCTAssertEqualObjects([mockObject objectAtIndex:2], @" BB-LB-C-G-E-WB-");
    
    mockObject = [parsedArray objectAtIndex:3179];
    XCTAssertEqualObjects([mockObject objectAtIndex:0], @"John Carney");
    XCTAssertEqualObjects([mockObject objectAtIndex:1], @"Notre Dame");
    XCTAssertEqualObjects([mockObject objectAtIndex:2], @" K");
}

@end
