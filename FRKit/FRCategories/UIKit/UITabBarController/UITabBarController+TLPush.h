//
//  UITabBarController+TLLaunchExtension.h
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarController (TLPush)

/**
 *  获取当前VC的navController，并执行push操作
 *
 *  @return 是否成功push
 */
- (BOOL)pushViewController:(UIViewController *)viewController animated:(BOOL)animated;

@end
