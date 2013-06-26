//
//  UIViewController+RMAdditions.h
//  RMCategories
//
//  Created by Richard McClellan on 6/15/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (RMAdditions)

- (void)presentNavigationControllerWithRootViewController:(UIViewController *)controller animated:(BOOL)animated completion:(void (^)(void))completion;
- (void)addObserversForAdjustingViewForKeyboard;
- (void)removeObserversForAdjustingViewForKeyboard;

@end
