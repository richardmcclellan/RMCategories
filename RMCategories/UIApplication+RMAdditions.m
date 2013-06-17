//
//  UIApplication+RMAdditions.m
//  RMCategories
//
//  Created by Richard McClellan on 5/27/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//

#import "UIApplication+RMAdditions.h"
#import "NSDictionary+RMAdditions.h"
#import "NSMutableDictionary+RMAdditions.h"

@interface UIApplication (Private)
- (BOOL)isAtLeastVersion:(NSString *)version;
@end

@implementation UIApplication (RMAdditions)

- (BOOL) isAtLeast6_0 {
    return [self isAtLeastVersion:@"6.0"];
}

- (BOOL) isAtLeast5_1 {
    return [self isAtLeastVersion:@"5.1"];
}

- (BOOL) isAtLeast5_0_1 {
    return [self isAtLeastVersion:@"5.0.1"];
}

- (BOOL)isAtLeastVersion:(NSString *)version {
    static NSMutableDictionary *isAtLeastVersionCache = nil;
    if(isAtLeastVersionCache == nil) {
        isAtLeastVersionCache = [NSMutableDictionary dictionary];
    }
    NSNumber *isAtLeastVersion = [isAtLeastVersionCache objectForKey:version];
    if(isAtLeastVersion == nil) {
        BOOL result = [[[UIDevice currentDevice] systemVersion] compare:version options:NSNumericSearch] != NSOrderedAscending;
        [isAtLeastVersionCache setBool:result forKey:version];
    }
    return [isAtLeastVersionCache boolForKey:version];
}

@end
