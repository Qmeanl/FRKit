//
//  UIImage+Color.h
//  FRKit
//
//  Created by wenhua on 2018/11/19.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Color)
+ (UIImage *)imageWithColor:(UIColor *)color;

- (UIImage *)imageWithColor:(UIColor *)color;

// 灰色图像
- (UIImage *)grayImage;
@end

NS_ASSUME_NONNULL_END
