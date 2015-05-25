//
//  NSArray+YRSafeCategory.h
//  YRSnippets
//
//  Created by 王晓宇 on 13-7-12.
//  Copyright (c) 2013年 王晓宇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (YRSafeCategory)
+(id)arrayWithObjectSafe:(id)anObject;
-(id)objectAtIndexSafe:(NSUInteger)uindex;
-(NSArray *)arrayByAddingObjectSafe:(id)anObject;
@end


@interface NSMutableArray (YRSafeCategory)
-(void)addObjectSafe:(id)anObject;
-(void)insertObjectSafe:(id)anObject atIndex:(NSUInteger)index;
-(void)replaceObjectAtIndexSafe:(NSUInteger)index withObject:(id)anObject;
-(void)removeObjectAtIndexSafe:(NSUInteger)index;
@end