//
//  UIAlertView+ActionBlocks.h
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (ActionBlocks)

@property (nonatomic, copy) void (^tt_actionBlock)(UIAlertView *alertView, NSInteger buttonIndex);

- (id)initWithTitle:(NSString *)title
            message:(NSString *)message
        actionBlock:(void (^)(UIAlertView *alertView, NSInteger buttonIndex))actionBlock
  cancelButtonTitle:(NSString *)cancelButtonTitle
  otherButtonTitles:(NSString *)otherButtonTitles, ...NS_REQUIRES_NIL_TERMINATION;

@end
