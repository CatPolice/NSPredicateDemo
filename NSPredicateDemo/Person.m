//
//  Person.m
//  NSPredicateDemo
//
//  Created by gavin on 14-7-25.
//  Copyright (c) 2014年 gavin.gu@live.com. All rights reserved.
//

#import "Person.h"

@implementation Person


- (NSString *)description {
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}


@end
