//
//  NSObject+Dealloc.m
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import "NSObject+Dealloc.h"
#import <objc/runtime.h>
#import "FRDeallocTask.h"

static const char kTask = '0';

@implementation NSObject (Dealloc)

- (void)addDeallocTask:(FRDeallocBlock)deallocTask forTarget:(id)target key:(NSString *)key
{
    [self.deallocTask addDeallocTask:deallocTask forTarget:target key:key];
}

- (void)removeDeallocTaskForTarget:(id)target key:(NSString *)key
{
    [self.deallocTask removeDeallocTaskForTarget:target key:key];
}

#pragma mark - # Getters
- (FRDeallocTask *)deallocTask
{
    FRDeallocTask *task = objc_getAssociatedObject(self, &kTask);
    if (!task) {
        task = [[FRDeallocTask alloc] init];
        objc_setAssociatedObject(self, &kTask, task, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return task;
}

@end
