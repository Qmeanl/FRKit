//
//  FRActionSheet.h
//  FRKit
//
//  Created by wenhua on 2018/11/19.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FRActionSheet;
@protocol FRActionSheetDelegate <NSObject>

@optional;
- (void)actionSheet:(FRActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;
@end
NS_ASSUME_NONNULL_BEGIN

@interface FRActionSheet : UIView

@property (nonatomic, strong) NSMutableArray *otherButtonTitles;

/// 按钮个数
@property (nonatomic, assign, readonly) NSInteger numberOfButtons;

/// 取消按钮index
@property (nonatomic, assign, readonly) NSInteger cancelButtonIndex;

/// 高亮按钮index
@property (nonatomic, assign, readonly) NSInteger destructiveButtonIndex;

@property (nonatomic, weak) id<FRActionSheetDelegate> delegate;

/// 点击事件响应block
@property (nonatomic, copy) void (^clickAction)(NSInteger buttonIndex);

- (id)initWithTitle:(NSString *)title
           delegate:(id<FRActionSheetDelegate>)delegate
  cancelButtonTitle:(NSString *)cancelButtonTitle
destructiveButtonTitle:(NSString *)destructiveButtonTitle
  otherButtonTitles:(NSString *)otherButtonTitles, ...;


- (id)initWithTitle:(NSString *)title
        clickAction:(void (^)(NSInteger buttonIndex))clickAction
  cancelButtonTitle:(NSString *)cancelButtonTitle
destructiveButtonTitle:(NSString *)destructiveButtonTitle
  otherButtonTitles:(NSString *)otherButtonTitles, ...;

/**
 *  显示ActionSheet
 */
- (void)show;

/**
 *  根据index获取按钮标题
 *
 *  @param  buttonIndex     按钮index
 */
- (NSString *)buttonTitleAtIndex:(NSInteger)buttonIndex;

@end

NS_ASSUME_NONNULL_END
