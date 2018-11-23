//
//  UIScrollView+Pages.h
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (Pages)

#pragma mark - # 横向分页
@property (nonatomic, assign, readonly) NSInteger numberOfPageX;
@property (nonatomic, assign) NSInteger pageX;
- (void)setPageX:(CGFloat)page animated:(BOOL)animated;

#pragma mark - # 纵向分页
@property (nonatomic, assign, readonly) NSInteger numberOfPageY;
@property (nonatomic, assign) NSInteger pageY;
- (void)setPageY:(CGFloat)page animated:(BOOL)animated;

@end
