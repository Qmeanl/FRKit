//
//  FRShortcutMacros.h
//  FRKit
//
//  Created by wenhua on 2018/11/19.
//  Copyright © 2018 黄小华. All rights reserved.
//

#ifndef FRShortcutMacros_h
#define FRShortcutMacros_h

// 屏幕尺寸
#define SCREEN_SIZE [UIScreen mainScreen].bounds.size
#define     SCREEN_WIDTH                SCREEN_SIZE.width
#define     SCREEN_HEIGHT               SCREEN_SIZE.height

//MAKR: 设备类型
#define     IS_IPAD                 [[UIDevice currentDevice].model isEqualToString:@"iPad"]
#define     IS_IPHONE               [[UIDevice currentDevice].model isEqualToString:@"iPhone"]

/// 颜色
#define     RGBColor(r, g, b)           [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1.0]
#define     RGBAColor(r, g, b, a)       [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:a]
#define     HexColor(color)             [UIColor colorWithRed:((float)((color & 0xFF0000) >> 16))/255.0 green:((float)((color & 0xFF00) >> 8))/255.0 blue:((float)(color & 0xFF))/255.0 alpha:1.0]
#define     HexAColor(color, a)         [UIColor colorWithRed:((float)((color & 0xFF0000) >> 16))/255.0 green:((float)((color & 0xFF00) >> 8))/255.0 blue:((float)(color & 0xFF))/255.0 alpha:a]

/// PushVC
#define     PushVC(vc)                  {\
[vc setHidesBottomBarWhenPushed:YES];\
[self.navigationController pushViewController:vc animated:YES];\
}





#endif /* FRShortcutMacros_h */
