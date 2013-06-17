//
//  UIImage+RMAdditions.m
//  RMCategories
//
//  Created by Richard McClellan on 6/15/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//

#import "UIImage+RMAdditions.h"

@implementation UIImage (RMAdditions)

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
