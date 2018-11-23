//
//  UICollectionViewCell+Extensions.m
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import "UICollectionViewCell+Extensions.h"

@implementation UICollectionViewCell (Extensions)

- (void)setSelectedBackgrounColor:(UIColor *)selectedBackgrounColor
{
    if (selectedBackgrounColor) {
        UIView *selectedBGView = [[UIView alloc] init];
        [selectedBGView setBackgroundColor:selectedBackgrounColor];
        [self setSelectedBackgroundView:selectedBGView];
    }
    else {
        [self setSelectedBackgroundView:nil];
    }
}
- (UIColor *)selectedBackgrounColor
{
    return self.selectedBackgroundView.backgroundColor;
}

@end
