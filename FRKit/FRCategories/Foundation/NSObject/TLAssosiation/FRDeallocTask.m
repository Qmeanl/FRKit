//
//  TLDeallocTask.m
//  FRKit
//
//  Created by wenhua on 2018/11/20.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import "FRDeallocTask.h"

#pragma mark - ## TLDeallocTaskItem
@interface FRDeallocTaskItem : NSObject

@property (nonatomic, weak, readonly) id target;
@property (nonatomic, copy, readonly) NSString *key;
@property (nonatomic, copy, readonly) FRDeallocBlock task;

- (instancetype)initWithTarget:(id)target key:(NSString *)key task:(FRDeallocBlock)task;

@end

@implementation FRDeallocTaskItem

- (instancetype)initWithTarget:(id)target key:(NSString *)key task:(FRDeallocBlock)task
{
    self = [super init];
    if (self) {
        _target = target;
        _key = key;
        _task = [task copy];
    }
    return self;
}

- (BOOL)isEqual:(FRDeallocTaskItem *)object
{
    if (object == self) {
        return YES;
    }
    else if ([object isKindOfClass:[self class]] && [object.target isEqual:self.target] && [object.key isEqualToString:self.key]) {
        return YES;
    }
    return NO;
}

- (NSUInteger)hash
{
    return ([self.target hash] + self.key.hash) / 2;
}

@end

#pragma mark - ## TLDeallocTask
@interface FRDeallocTask ()

@property (nonatomic, strong) NSMutableSet<FRDeallocTaskItem *> *taskSet;

@end

@implementation FRDeallocTask

- (id)init
{
    if (self = [super init]) {
        self.taskSet = [[NSMutableSet alloc] init];
    }
    return self;
}

- (void)dealloc
{
    [self.taskSet enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(FRDeallocTaskItem *obj, BOOL *stop) {
        obj.task ? obj.task() : nil;
    }];
}

#pragma mark - # Public Methods
- (void)addTask:(FRDeallocBlock)task forTarget:(id)target key:(NSString *)key
{
    FRDeallocTaskItem *taskItem = [[FRDeallocTaskItem alloc] initWithTarget:target key:key task:task];
    if ([self.taskSet containsObject:taskItem]) {
        [self.taskSet removeObject:taskItem];
    }
    [self.taskSet addObject:taskItem];
}

- (void)removeTaskForTarget:(id)target key:(NSString *)key
{
    FRDeallocTaskItem *taskItem = [[FRDeallocTaskItem alloc] initWithTarget:target key:key task:nil];
    [self.taskSet removeObject:taskItem];
}

@end
