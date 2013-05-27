//
//  NSDictionary+RMAdditions.h
//  RMCategories
//
//  Created by Richard McClellan on 5/27/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (RMAdditions)

- (BOOL) boolForKey:(id)key;
- (float) floatForKey:(id)key;
- (NSInteger) integerForKey:(id)key;
- (double) doubleForKey:(id)key;

@end
