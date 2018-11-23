//
//  NSString+Contains.h
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Contains)

@property (nonatomic, assign, readonly, getter=isContainEmoji) BOOL containEmoji;

@property (nonatomic, assign, readonly, getter=isContainChinese) BOOL containChinese;

@property (nonatomic, assign, readonly, getter=isContainBlank) BOOL containBlank;

@end
