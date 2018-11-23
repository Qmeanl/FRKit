//
//  UIScrollView+iOS11Fixed.m
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import "UIScrollView+iOS11Fixed.h"

@implementation UIScrollView (iOS11Fixed)

- (void)setNeverAdjustmentContentInset:(BOOL)neverAdjustmentContentInset
{
#ifdef __IPHONE_11_0
    if (@available(iOS 11.0, *)) {
        self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
#endif
}
- (BOOL)neverAdjustmentContentInset
{
#ifdef __IPHONE_11_0
    if (@available(iOS 11.0, *)) {
        return self.contentInsetAdjustmentBehavior;
    }
#endif
    return NO;
}

@end
