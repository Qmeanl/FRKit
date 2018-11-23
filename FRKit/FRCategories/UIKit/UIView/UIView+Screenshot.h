//
//  UIView+Screenshot.h
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Screenshot)

/**
 *  截屏
 *
 *  线程安全的
 */
- (UIImage *)captureImage;

@end
