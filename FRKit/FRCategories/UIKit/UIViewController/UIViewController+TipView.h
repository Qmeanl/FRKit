//
//  UIViewController+TipView.h
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (TipView)

@property (nonatomic, strong, readonly) UIView *tt_tipView;

- (void)showTipView:(UIView *)tipView retryAction:(void (^)(id userData))retryAction;

- (void)showTipView:(UIView *)tipView userData:(id)userData retryAction:(void (^)(id userData))retryAction;

- (void)removeTipView;

@end
