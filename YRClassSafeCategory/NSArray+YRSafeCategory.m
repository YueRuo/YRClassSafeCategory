//
//  NSArray+YRSafeCategory.m
//  YRSnippets
//
//  Created by 王晓宇 on 13-7-12.
//  Copyright (c) 2013年 王晓宇. All rights reserved.
//

#import "NSArray+YRSafeCategory.h"

@implementation NSArray (YRSafeCategory)
+(id)arrayWithObjectSafe:(id)anObject{
    if (!anObject) {
        return nil;
    }
    return [self arrayWithObject:anObject];
}

-(id)objectAtIndexSafe:(NSUInteger)uindex{
    NSInteger index=uindex;
    if (index<0||index>=self.count) {
        return nil;
    }
    return [self objectAtIndex:index];
}
-(NSArray *)arrayByAddingObjectSafe:(id)anObject{
    if (!anObject) {
        return [self mutableCopy];
    }
    return [self arrayByAddingObject:anObject];
}
@end


@implementation NSMutableArray (YRSafeCategory)
-(void)addObjectSafe:(id)anObject{
    if (!anObject) {
        return;
    }
    [self addObject:anObject];
}
-(void)insertObjectSafe:(id)anObject atIndex:(NSUInteger)index{
    if (!anObject) {
        return;
    }
    if (index>=self.count) {
        [self addObjectSafe:anObject];
        return;
    }
    [self insertObject:anObject atIndex:index];
}
-(void)replaceObjectAtIndexSafe:(NSUInteger)uindex withObject:(id)anObject{
    if (!anObject) {
        return;
    }
    NSInteger index=uindex;
    if (index<0||index>=self.count) {
        return;
    }
    [self replaceObjectAtIndex:index withObject:anObject];
}
-(void)removeObjectAtIndexSafe:(NSUInteger)uindex{
    NSInteger index=uindex;
    if (index<0||index>=self.count) {
        return;
    }
    [self removeObjectAtIndex:index];
}
@end