//
//  UIBarButtonItem+Action.h
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^FRBarButtonActionBlock)();

@interface UIBarButtonItem (Action)

+ (id)fixItemSpace:(CGFloat)space;

- (id)initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style actionBlick:(FRBarButtonActionBlock)actionBlock;

- (id)initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style actionBlick:(FRBarButtonActionBlock)actionBlock;

- (void)setActionBlock:(FRBarButtonActionBlock)actionBlock;

@end
