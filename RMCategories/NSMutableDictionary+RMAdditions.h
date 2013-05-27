//
//  NSMutableDictionary+RMAdditions.h
//  RMCategories
//
//  Created by Richard McClellan on 5/27/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSMutableDictionary (RMAdditions)

- (void)setBool:(BOOL)value forKey:(id)key;
- (void)setFloat:(float)value forKey:(id)key;
- (void)setInteger:(NSInteger)value forKey:(id)key;
- (void)setDouble:(double)value forKey:(id)key;

@end
