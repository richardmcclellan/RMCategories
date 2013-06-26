//
//  UIViewController+RMAdditions.m
//  RMCategories
//
//  Created by Richard McClellan on 6/15/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//

#import "UIViewController+RMAdditions.h"
#import "UIView+RMAdditions.h"
#import <objc/runtime.h>

static const void *kVisibleViewHeightKey = @"VisibleViewHeightKey";

@implementation UIViewController (RMAdditions)

- (void)presentNavigationControllerWithRootViewController:(UIViewController *)controller animated:(BOOL)animated completion:(void (^)(void))completion {
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    [self presentViewController:navigationController animated:animated completion:completion];
}

- (void)addObserversForAdjustingViewForKeyboard {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
}

- (void)removeObserversForAdjustingViewForKeyboard {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidHideNotification object:nil];
}

- (void)keyboardWillShow:(NSNotification *)notification {
    [self moveViewForKeyboard:notification up:YES];
}

- (void)keyboardDidShow:(NSNotification *)notification {
    [self makeSureViewHeightDidChange];
}

- (void)keyboardWillHide:(NSNotification *)notification {
    [self moveViewForKeyboard:notification up:NO];
}

- (void)keyboardDidHide:(NSNotification *)notification {
    [self makeSureViewHeightDidChange];
}

- (void)moveViewForKeyboard:(NSNotification*)notification up:(BOOL)up{
    NSDictionary* userInfo = [notification userInfo];
    CGRect endRect = [self.view convertRect:[[userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue] fromView:nil];
    CGFloat height = self.view.height + endRect.size.height * (up ? -1 : 1);
    NSTimeInterval duration = [[userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    UIViewAnimationCurve curve = [[userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey] intValue];
    UIViewAnimationOptions options = [UIView animationOptionsWithCurve:curve];
    objc_setAssociatedObject(self, kVisibleViewHeightKey, [NSNumber numberWithFloat:height], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [UIView animateWithDuration:duration delay:0 options:options animations:^{ [self.view setHeight:height]; } completion:nil];
}


// If the keyboard is shown at the same time that the view controller is being created, the view frame will end up being
// overridden, so we have set the view frame again.
- (void)makeSureViewHeightDidChange {
    CGFloat visibleViewHeight = [objc_getAssociatedObject(self, kVisibleViewHeightKey) floatValue];
    if(self.view.height != visibleViewHeight) {
        [self.view setHeight:visibleViewHeight];
    }
}



@end
