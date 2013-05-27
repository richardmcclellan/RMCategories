//
//  UIScrollView+Additions.m
//  RMCategories
//
//  Created by Richard McClellan on 5/27/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//


#import "UIScrollView+RMAdditions.h"

@implementation UIScrollView (Additions)

- (void)setContentInsetTop:(CGFloat)top {
    UIEdgeInsets inset = self.contentInset;
    inset.top = top;
    self.contentInset = inset;
}

- (CGFloat)contentInsetTop {
    return self.contentInset.top;
}

- (void)setContentInsetLeft:(CGFloat)left {
    UIEdgeInsets inset = self.contentInset;
    inset.left = left;
    self.contentInset = inset;
}

- (CGFloat)contentInsetLeft {
    return self.contentInset.left;
}

- (void)setContentInsetBottom:(CGFloat)bottom {
    UIEdgeInsets inset = self.contentInset;
    inset.bottom = bottom;
    self.contentInset = inset;
}

- (CGFloat)contentInsetBottom {
    return self.contentInset.bottom;
}

- (void)setContentInsetRight:(CGFloat)right {
    UIEdgeInsets inset = self.contentInset;
    inset.right = right;
    self.contentInset = inset;
}

- (CGFloat)contentInsetRight {
    return self.contentInset.right;
}

- (void)setContentOffsetX:(CGFloat)x {
    CGPoint offset = self.contentOffset;
    offset.x = x;
    self.contentOffset = offset;
}

- (CGFloat)contentOffsetX {
    return self.contentOffset.x;
}

- (void)setContentOffsetY:(CGFloat)y {
    CGPoint offset = self.contentOffset;
    offset.y = y;
    self.contentOffset = offset;
}

- (CGFloat)contentOffsetY {
    return self.contentOffset.y;
}

- (void)setContentWidth:(CGFloat)width {
    CGSize size = self.contentSize;
    size.width = width;
    self.contentSize = size;
}

- (CGFloat)contentWidth {
    return self.contentSize.width;
}

- (void)setContentHeight:(CGFloat)height {
    CGSize size = self.contentSize;
    size.height = height;
    self.contentSize = size;
}

- (CGFloat)contentHeight {
    return self.contentSize.height;
}

@end
