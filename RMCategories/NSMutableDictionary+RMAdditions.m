//
//  NSMutableDictionary+RMAdditions.m
//  RMCategories
//
//  Created by Richard McClellan on 5/27/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//


#import "NSMutableDictionary+RMAdditions.h"

@implementation NSMutableDictionary (RMAdditions)

- (void)setBool:(BOOL)value forKey:(id)key {
    [self setObject:[NSNumber numberWithBool:value] forKey:key];
}

- (void)setFloat:(float)value forKey:(id)key {
    [self setObject:[NSNumber numberWithFloat:value] forKey:key];
}

- (void)setInteger:(NSInteger)value forKey:(id)key {
    [self setObject:[NSNumber numberWithInteger:value] forKey:key];
}

- (void)setDouble:(double)value forKey:(id)key {
    [self setObject:[NSNumber numberWithDouble:value] forKey:key];
}

@end
