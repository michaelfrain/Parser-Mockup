//
//  SDBViewController.h
//  SportsDB Mock
//
//  Created by Michael Frain on 1/23/14.
//  Copyright (c) 2014 SportsDB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHCSVParser.h"
#import "SDBParsedObjects.h"

@interface SDBViewController : UIViewController

@property (nonatomic, strong) UITextField *number;
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UILabel *label;

@property (nonatomic, strong) SDBParsedObjects *parsedObject;
@property (nonatomic, strong) NSArray *parsedArray;

@end
