//
//  FRUIUtility.m
//  FRKit
//
//  Created by wenhua on 2018/11/19.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import "FRUIUtility.h"
#import "UIWindow+FRWindow.h"

@implementation FRUIUtility

#pragma mark - # Alert
+ (void)showAlertWithTitle:(NSString *)title
{
    [self showAlertWithTitle:title message:nil];
}

+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message
{
    [self showAlertWithTitle:title message:message cancelButtonTitle:nil];
}

+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle
{
    [self showAlertWithTitle:title message:message cancelButtonTitle:cancelButtonTitle actionHandler:nil];
}

+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle actionHandler:(void (^)(NSInteger buttonIndex))actionHandler
{
    [self showAlertWithTitle:title message:message cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil actionHandler:actionHandler];
}

+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles actionHandler:(void (^)(NSInteger buttonIndex))actionHandler
{
    cancelButtonTitle = cancelButtonTitle ? cancelButtonTitle : @"取消";
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
        
        __weak typeof(alertController) weakController = alertController;
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            NSInteger index = [weakController.actions indexOfObject:action];
            if (actionHandler) {
                actionHandler(index);
            }
        }];
        [alertController addAction:cancelAction];
        
        for (NSString *title in otherButtonTitles) {
            UIAlertAction *action = [UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                if (actionHandler) {
                    NSInteger index = [weakController.actions indexOfObject:action];
                    actionHandler(index);
                }
            }];
            [alertController addAction:action];
        }
        
        UIViewController *curVC = [(UIWindow *)[UIApplication sharedApplication].keyWindow visibleViewController];
        [curVC presentViewController:alertController animated:YES completion:nil];
}

@end
