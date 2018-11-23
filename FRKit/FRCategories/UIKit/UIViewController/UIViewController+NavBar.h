//
//  UIViewController+NavBar.h
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIBarButtonItem+Action.h"

@interface UIViewController (NavBar)

/// 添加消失BarButton（左侧)
- (UIBarButtonItem *)addDismissBarButtonWithTitle:(NSString *)title;

/// 左侧文字BarButton
- (UIBarButtonItem *)addLeftBarButtonWithTitle:(NSString *)title actionBlick:(FRBarButtonActionBlock)actionBlock;
/// 左侧图片BarButton
- (UIBarButtonItem *)addLeftBarButtonWithImage:(UIImage *)image actionBlick:(FRBarButtonActionBlock)actionBlock;

/// 右侧文字BarButton
- (UIBarButtonItem *)addRightBarButtonWithTitle:(NSString *)title actionBlick:(FRBarButtonActionBlock)actionBlock;
/// 右侧图片BarButton
- (UIBarButtonItem *)addRightBarButtonWithImage:(UIImage *)image actionBlick:(FRBarButtonActionBlock)actionBlock;

@end
