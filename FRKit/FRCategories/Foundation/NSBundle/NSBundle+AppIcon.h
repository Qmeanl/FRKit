//
//  NSBundle+AppIcon.h
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSBundle (AppIcon)

@property (nonatomic, strong, readonly) NSString *appIconPath;

@property (nonatomic, strong, readonly) UIImage *appIcon;

@end
