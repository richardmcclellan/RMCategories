//
//  UIScrollView+Additions.h
//  RMCategories
//
//  Created by Richard McClellan on 5/27/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface UIScrollView (RMAdditions)

/**
 * Shortcut for contentInset.top
 *
 * Sets contentInset.top = top
 */
@property (nonatomic, assign) CGFloat contentInsetTop;

/**
 * Shortcut for contentInset.left
 *
 * Sets contentInset.left = contentInsetLeft
 */
@property (nonatomic, assign) CGFloat contentInsetLeft;

/**
 * Shortcut for contentInset.bottom
 *
 * Sets contentInset.bottom = contentInsetBottom
 */
@property (nonatomic, assign) CGFloat contentInsetBottom;

/**
 * Shortcut for contentInset.right
 *
 * Sets contentInset.right = contentInsetRight
 */
@property (nonatomic, assign) CGFloat contentInsetRight;

/**
 * Shortcut for contentOffset.x
 *
 * Sets contentOffset.x = contentOffsetX
 */
@property (nonatomic, assign) CGFloat contentOffsetX;

/**
 * Shortcut for contentOffset.y
 *
 * Sets contentOffset.y = contentOffsetY
 */
@property (nonatomic, assign) CGFloat contentOffsetY;

/**
 * Shortcut for contentSize.width
 *
 * Sets contentSize.width = contentWidth
 */
@property (nonatomic, assign) CGFloat contentWidth;

/**
 * Shortcut for contentSize.height
 *
 * Sets contentSize.height = contentHeight
 */
@property (nonatomic, assign) CGFloat contentHeight;

@end
