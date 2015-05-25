//
//  NSNumber+YRSafeCategory.m
//  YRSnippets
//
//  Created by 王晓宇 on 14-2-11.
//  Copyright (c) 2014年 王晓宇. All rights reserved.
//

#import "NSNumber+YRSafeCategory.h"

@implementation NSNumber (YRSafeCategory)
- (char)charValueSafe{
    if (self&&[self respondsToSelector:@selector(charValue)]) {
        return [self charValue];
    }
    return 0;
}
- (unsigned char)unsignedCharValueSafe{
    if (self&&[self respondsToSelector:@selector(unsignedCharValue)]) {
        return [self unsignedCharValue];
    }
    return 0;
}
- (short)shortValueSafe{
    if (self&&[self respondsToSelector:@selector(shortValue)]) {
        return [self shortValue];
    }
    return 0;
}
- (unsigned short)unsignedShortValueSafe{
    if (self&&[self respondsToSelector:@selector(unsignedShortValue)]) {
        return [self unsignedShortValue];
    }
    return 0;
}
- (int)intValueSafe{
    if (self&&[self respondsToSelector:@selector(intValue)]) {
        return [self intValue];
    }
    return 0;
}
- (unsigned int)unsignedIntValueSafe{
    if (self&&[self respondsToSelector:@selector(unsignedIntValue)]) {
        return [self unsignedIntValue];
    }
    return 0;
}
- (long)longValueSafe{
    if (self&&[self respondsToSelector:@selector(longValue)]) {
        return [self longValue];
    }
    return 0;
}
- (unsigned long)unsignedLongValueSafe{
    if (self&&[self respondsToSelector:@selector(unsignedLongValue)]) {
        return [self unsignedLongValue];
    }
    return 0;
}
- (long long)longLongValueSafe{
    if (self&&[self respondsToSelector:@selector(longLongValue)]) {
        return [self longLongValue];
    }
    return 0;
}
- (unsigned long long)unsignedLongLongValueSafe{
    if (self&&[self respondsToSelector:@selector(unsignedLongLongValue)]) {
        return [self unsignedLongLongValue];
    }
    return 0;
}
- (float)floatValueSafe{
    if (self&&[self respondsToSelector:@selector(floatValue)]) {
        return [self floatValue];
    }
    return 0.0f;
}
- (double)doubleValueSafe{
    if (self&&[self respondsToSelector:@selector(doubleValue)]) {
        return [self doubleValue];
    }
    return 0.0f;
}
- (BOOL)boolValueSafe{
    if (self&&[self respondsToSelector:@selector(boolValue)]) {
        return [self boolValue];
    }
    return false;
}
- (NSInteger)integerValueSafe NS_AVAILABLE(10_5, 2_0){
    if (self&&[self respondsToSelector:@selector(integerValue)]) {
        return [self integerValue];
    }
    return 0;
}
- (NSUInteger)unsignedIntegerValueSafe NS_AVAILABLE(10_5, 2_0){
    if (self&&[self respondsToSelector:@selector(unsignedIntegerValue)]) {
        return [self unsignedIntegerValue];
    }
    return 0;
}
@end
