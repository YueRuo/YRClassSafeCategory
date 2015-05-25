//
//  NSString+YRSafeCategory.h
//  YRSnippets
//
//  Created by 王晓宇 on 13-7-22.
//  Copyright (c) 2013年 王晓宇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (YRSafeCategory)

-(NSString *)substringFromIndexSafe:(NSUInteger)from;
-(NSString *)substringToIndexSafe:(NSUInteger)to;
-(NSString *)substringWithRangeSafe:(NSRange)range;
-(NSString *)stringByReplacingCharactersInRangeSafe:(NSRange)range withString:(NSString *)replacement;

- (double)doubleValueSafe;
- (float)floatValueSafe;
- (int)intValueSafe;
- (NSInteger)integerValueSafe NS_AVAILABLE(10_5, 2_0);
- (long long)longLongValueSafe NS_AVAILABLE(10_5, 2_0);
- (BOOL)boolValueSafe NS_AVAILABLE(10_5, 2_0);
@end
