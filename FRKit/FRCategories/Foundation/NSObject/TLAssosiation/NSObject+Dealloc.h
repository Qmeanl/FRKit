//
//  NSObject+Dealloc.h
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//
#import <Foundation/Foundation.h>

typedef void(^FRDeallocBlock)(void);

@interface NSObject (Dealloc)

- (void)addDeallocTask:(FRDeallocBlock)deallocTask forTarget:(id)target key:(NSString *)key;

- (void)removeDeallocTaskForTarget:(id)target key:(NSString *)key;

@end
