//
//  UITextView+Select.h
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (Select)

/**
 * 当前选中的字符串范围
 */
- (NSRange)selectedRange;

/**
 *  选中所有文字
 */
- (void)selectedText;

/**
 *  选中指定范围的文字
 */
- (void)setSelectedRange:(NSRange)range;

@end
