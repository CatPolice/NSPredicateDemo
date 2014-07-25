//
//  ViewController.m
//  NSPredicateDemo
//
//  Created by gavin on 14-7-25.
//  Copyright (c) 2014年 gavin.gu@live.com. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    NSArray *firstNames = @[ @"Alice", @"Bob", @"Charlie", @"Quentin" ];
    NSArray *lastNames = @[ @"Smith", @"Jones", @"Smith", @"Alberts" ];
    NSArray *ages = @[ @24, @27, @33, @31 ];
    
    NSMutableArray *people = [NSMutableArray array];

    [firstNames enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        Person *person = [[Person alloc] init];
        person.firstName = firstNames[idx];
        person.lastName = lastNames[idx];
        person.age = ages[idx];
        [people addObject:person];
    }];
    
    
    NSPredicate *bobPredicate = [NSPredicate predicateWithFormat:@"firstName = 'Bob'"];
    NSPredicate *smithPredicate = [NSPredicate predicateWithFormat:@"lastName = %@", @"Smith"];
    NSPredicate *thirtiesPredicate = [NSPredicate predicateWithFormat:@"age >= 30"];
    

    NSLog(@"Bobs: %@", [people filteredArrayUsingPredicate:bobPredicate]);
    

    NSLog(@"Smiths: %@", [people filteredArrayUsingPredicate:smithPredicate]);
    
    
    NSLog(@"30's: %@", [people filteredArrayUsingPredicate:thirtiesPredicate]);

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
