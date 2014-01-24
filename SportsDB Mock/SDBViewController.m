//
//  SDBViewController.m
//  SportsDB Mock
//
//  Created by Michael Frain on 1/23/14.
//  Copyright (c) 2014 SportsDB. All rights reserved.
//

#import "SDBViewController.h"

@interface SDBViewController ()

@end

@implementation SDBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.parsedObject = [[SDBParsedObjects alloc] init];
    self.parsedArray = [[NSArray alloc] init];
    self.parsedArray = [self.parsedObject csvParseObjects];
    
    self.number = [[UITextField alloc] initWithFrame:CGRectMake(10, 10, 260, 44)];
    self.number.placeholder = @"Enter a number.";
    [self.view addSubview:self.number];
    
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button.frame = CGRectMake(10, 60, 260, 44);
    self.button.titleLabel.text = @"Fetch player info";
    self.button.titleLabel.textColor = [UIColor whiteColor];
    self.button.backgroundColor = [UIColor blackColor];
    [self.button addTarget:self action:@selector(fetchPlayerInfo:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(10, 120, 260, 260)];
    self.label.text = @"Player info here.";
    self.label.numberOfLines = 0;
    [self.view addSubview:self.label];
}

- (void)fetchPlayerInfo:(id)sender {
    NSInteger number = self.number.text.integerValue;
    NSArray *playerArray = [self.parsedArray objectAtIndex:number];
    self.label.text = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@", [playerArray objectAtIndex:0], [playerArray objectAtIndex:1], [playerArray objectAtIndex:2], [playerArray objectAtIndex:3], [playerArray objectAtIndex:4], [playerArray objectAtIndex:5], [playerArray objectAtIndex:6], [playerArray objectAtIndex:7], [playerArray objectAtIndex:8], [playerArray objectAtIndex:9], [playerArray objectAtIndex:10], [playerArray objectAtIndex:11]];
    [self.number resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
