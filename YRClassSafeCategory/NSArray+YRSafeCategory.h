//
//  NSArray+YRSafeCategory.h
//  YRSnippets
//
//  Created by 王晓宇 on 13-7-12.
//  Copyright (c) 2013年 王晓宇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray<ObjectType> (YRSafeCategory)
+ (instancetype)arrayWithObjectSafe:(ObjectType)anObject;
- (nullable ObjectType)objectAtIndexSafe:(NSUInteger)uindex;
- (NSArray<ObjectType> *)arrayByAddingObjectSafe:(nullable ObjectType)anObject;
@end

@interface NSMutableArray<ObjectType> (YRSafeCategory)
- (void)addObjectSafe:(nullable ObjectType)anObject;
- (void)insertObjectSafe:(nullable ObjectType)anObject atIndex:(NSUInteger)index;
- (void)replaceObjectAtIndexSafe:(NSUInteger)index withObject:(nullable ObjectType)anObject;
- (void)removeObjectAtIndexSafe:(NSUInteger)index;
@end

NS_ASSUME_NONNULL_END
