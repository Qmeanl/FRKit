//
//  NSURL+Params.h
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (Params)

/**
 *  url参数转字典
 */
- (NSDictionary *)parameters;

/**
 *  根据参数名 取参数值
 */
- (NSString *)valueForParameter:(NSString *)parameterKey;

@end
