//
//  RMCategoriesTests.m
//  RMCategoriesTests
//
//  Created by Richard McClellan on 5/27/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//

#import "RMCategoriesTests.h"
#import "RMCategories.h"

@interface RMCategoriesTests ()

@property (nonatomic, strong) UIView *testView;
@property (nonatomic, strong) UIScrollView *testScrollView;

@end

@implementation RMCategoriesTests

- (void)setUp {
    [super setUp];
    self.testView = [[UIView alloc] initWithFrame:CGRectZero];
    self.testScrollView = [[UIScrollView alloc] initWithFrame:CGRectZero];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testUIViewAdditions {
    self.testView.left = 10.0;
    STAssertTrue(self.testView.left == 10.0, @"test shortcut for setting left");

    self.testView.top = 11.0;
    STAssertTrue(self.testView.top == 11.0, @"test shortcut for setting top");

    self.testView.right = 12.0;
    STAssertTrue(self.testView.right == 12.0, @"test shortcut for setting right");

    self.testView.bottom = 13.0;
    STAssertTrue(self.testView.bottom == 13.0, @"test shortcut for setting bottom");
    
    self.testView.centerX = 14.0;
    STAssertTrue(self.testView.centerX == 14.0, @"test shortcut for setting centerX");
    
    self.testView.centerY = 15.0;
    STAssertTrue(self.testView.centerY == 15.0, @"test shortcut for setting centerY");

    self.testView.width = 16.0;
    STAssertTrue(self.testView.width == 16.0, @"test shortcut for setting width");
    
    self.testView.height = 17.0;
    STAssertTrue(self.testView.height == 17.0, @"test shortcut for setting height");
    
    self.testView.origin = CGPointMake(18.0, 19.0);
    STAssertTrue(self.testView.origin.x == 18.0, @"test shortcut for setting centerX");
    STAssertTrue(self.testView.origin.y == 19.0, @"test shortcut for setting centerX");
    
    self.testView.size = CGSizeMake(20.0, 21.0);
    STAssertTrue(self.testView.size.width == 20.0, @"test shortcut for setting size");
    STAssertTrue(self.testView.size.height == 21.0, @"test shortcut for setting size");
}

- (void)testUIScrollViewAdditions {
    self.testScrollView.contentInsetLeft = 10.0;
    STAssertTrue(self.testScrollView.contentInsetLeft == 10.0, @"test shortcut for setting contentInset left");
    
    self.testScrollView.contentInsetTop = 11.0;
    STAssertTrue(self.testScrollView.contentInsetTop == 11.0, @"test shortcut for setting contentInset top");
    
    self.testScrollView.contentInsetRight = 12.0;
    STAssertTrue(self.testScrollView.contentInsetRight == 12.0, @"test shortcut for setting contentInset right");
    
    self.testScrollView.contentInsetBottom = 13.0;
    STAssertTrue(self.testScrollView.contentInsetBottom == 13.0, @"test shortcut for setting contentInset bottom");
    
    self.testScrollView.contentOffsetX = 14.0;
    STAssertTrue(self.testScrollView.contentOffsetX == 14.0, @"test shortcut for setting contentOffset X");
    
    self.testScrollView.contentOffsetY = 15.0;
    STAssertTrue(self.testScrollView.contentOffsetY == 15.0, @"test shortcut for setting contentOffset Y");
    
    self.testScrollView.contentHeight = 16.0;
    STAssertTrue(self.testScrollView.contentHeight == 16.0, @"test shortcut for setting content height");
    
    self.testScrollView.contentWidth = 17.0;
    STAssertTrue(self.testScrollView.contentWidth == 17.0, @"test shortcut for setting content width");
}

@end
