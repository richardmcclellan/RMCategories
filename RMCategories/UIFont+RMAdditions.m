//
//  UIFont+RMAdditions.m
//  RMCategories
//
//  Created by Richard McClellan on 5/28/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//

#import "UIFont+RMAdditions.h"

@implementation UIFont (RMAdditions)

-(CGFloat)lineHeight {
    return (self.ascender - self.descender) + 1;
}

@end
