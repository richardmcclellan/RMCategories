//
//  NSDictionary+RMAdditions.m
//  RMCategories
//
//  Created by Richard McClellan on 5/27/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//


#import "NSDictionary+RMAdditions.h"

@implementation NSDictionary (RMAdditions)

- (BOOL) boolForKey:(id)key {
    id obj = [self objectForKey:key];
    return obj ? [obj boolValue] : NO;
}

- (float) floatForKey:(id)key {
    id obj = [self objectForKey:key];
    return obj ? [obj floatValue] : 0;
}

- (NSInteger) integerForKey:(id)key {
    id obj = [self objectForKey:key];
    return obj ? [obj integerValue] : 0;
}

- (double) doubleForKey:(id)key {
    id obj = [self objectForKey:key];
    return obj ? [obj doubleValue] : 0;
}

@end
