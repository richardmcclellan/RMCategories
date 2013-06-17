//
//  UIViewController+RMAdditions.m
//  RMCategories
//
//  Created by Richard McClellan on 6/15/13.
//  Copyright (c) 2013 Richard McClellan. All rights reserved.
//

#import "UIViewController+RMAdditions.h"
#import "UIView+RMAdditions.h"

@implementation UIViewController (RMAdditions)

- (void)addObserversForAdjustingViewForKeyboard {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
}

- (void)removeObserversForAdjustingViewForKeyboard {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
}

- (void) moveViewForKeyboard:(NSNotification*)notification up:(BOOL)up{
    NSDictionary* userInfo = [notification userInfo];
    CGRect endRect = [self.view convertRect:[[userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue] fromView:nil];
    CGFloat height = self.view.height + endRect.size.height * (up ? -1 : 1);
    NSTimeInterval duration = [[userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    UIViewAnimationCurve curve = [[userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey] intValue];
    UIViewAnimationOptions options = [UIView animationOptionsWithCurve:curve];
    [UIView animateWithDuration:duration delay:0 options:options animations:^{ [self.view setHeight:height]; } completion:nil];
}

- (void) keyboardWillHide:(NSNotification *)notification {
    [self moveViewForKeyboard:notification up:NO];
}

- (void) keyboardWillShow:(NSNotification *)notification {
    [self moveViewForKeyboard:notification up:YES];
}

- (void)presentNavigationControllerWithRootViewController:(UIViewController *)controller animated:(BOOL)animated completion:(void (^)(void))completion {
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    [self presentViewController:navigationController animated:animated completion:completion];
}

@end
