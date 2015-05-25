//
//  NSString+YRSafeCategory.m
//  YRSnippets
//
//  Created by 王晓宇 on 13-7-22.
//  Copyright (c) 2013年 王晓宇. All rights reserved.
//

#import "NSString+YRSafeCategory.h"

@implementation NSString (YRSafeCategory)
-(NSString *)substringFromIndexSafe:(NSUInteger)from{
    NSInteger start=from;
    if (start<0) {
        return [self copy];
    }
    if (start>self.length) {
        return nil;
    }
    return [self substringFromIndex:from];
}
-(NSString *)substringToIndexSafe:(NSUInteger)to{
    NSInteger end=to;
    if (end<0) {
        return nil;
    }
    if (end>=self.length) {
        return [self copy];
    }
    return [self substringToIndex:to];
}
-(NSString *)substringWithRangeSafe:(NSRange)range{
#if DEBUG
    if (range.length==0) {//这种情况对API合法，但是开发中一般不可能使用
        NSLog(@"NSString substringWithRangeSafe subRange length 0 of out of range (%d,%lu),string=%@",0,(unsigned long)self.length,self);
    }
#endif
    if (range.location>self.length) {
        return nil;
    }
    if (range.location+range.length>self.length) {
        return [self substringWithRange:NSMakeRange(range.location, self.length-range.location)];
    }
    return [self substringWithRange:range];
}
-(NSString *)stringByReplacingCharactersInRangeSafe:(NSRange)range withString:(NSString *)replacement{
#if DEBUG
    if (range.length==0) {//这种情况对API合法，但是开发中一般不可能使用
        NSLog(@"NSString substringWithRangeSafe subRange length 0 of out of range (%d,%lu),string=%@",0,(unsigned long)self.length,self);
    }
#endif
    if (range.location>self.length) {
        return nil;
    }
    if (range.location+range.length>self.length) {
        return [self stringByReplacingCharactersInRange:NSMakeRange(range.location, self.length-range.location) withString:replacement];
    }
    return [self stringByReplacingCharactersInRange:range withString:replacement];
}


- (double)doubleValueSafe{
    if (self&&[self respondsToSelector:@selector(doubleValue)]) {
        return [self doubleValue];
    }
    return 0.0f;
}
- (float)floatValueSafe{
    if (self&&[self respondsToSelector:@selector(floatValue)]) {
        return [self floatValue];
    }
    return 0.0f;
}
- (int)intValueSafe{
    if (self&&[self respondsToSelector:@selector(intValue)]) {
        return [self intValue];
    }
    return 0;
}
- (NSInteger)integerValueSafe NS_AVAILABLE(10_5, 2_0){
    if (self&&[self respondsToSelector:@selector(integerValue)]) {
        return [self integerValue];
    }
    return 0;
}
- (long long)longLongValueSafe NS_AVAILABLE(10_5, 2_0){
    if (self&&[self respondsToSelector:@selector(longLongValue)]) {
        return [self longLongValue];
    }
    return 0L;
}
- (BOOL)boolValueSafe NS_AVAILABLE(10_5, 2_0){
    if (self&&[self respondsToSelector:@selector(boolValue)]) {
        return [self boolValue];
    }
    return false;
}
@end
