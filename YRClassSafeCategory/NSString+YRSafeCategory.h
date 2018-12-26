//
//  NSString+YRSafeCategory.h
//  YRSnippets
//
//  Created by 王晓宇 on 13-7-22.
//  Copyright (c) 2013年 王晓宇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (YRSafeCategory)

- (nullable NSString *)substringFromIndexSafe:(NSUInteger)from;
- (nullable NSString *)substringToIndexSafe:(NSUInteger)to;
- (nullable NSString *)substringWithRangeSafe:(NSRange)range;
- (nullable NSString *)stringByReplacingCharactersInRangeSafe:(NSRange)range withString:(NSString *)replacement;

- (NSString *)stringByAppendingStringSafe:(nullable NSString *)aString;

- (double)doubleValueSafe;
- (float)floatValueSafe;
- (int)intValueSafe;
- (NSInteger)integerValueSafe NS_AVAILABLE(10_5, 2_0);
- (long long)longLongValueSafe NS_AVAILABLE(10_5, 2_0);
- (BOOL)boolValueSafe NS_AVAILABLE(10_5, 2_0);

- (unichar)characterAtIndexSafe:(NSUInteger)index;
@end

NS_ASSUME_NONNULL_END
