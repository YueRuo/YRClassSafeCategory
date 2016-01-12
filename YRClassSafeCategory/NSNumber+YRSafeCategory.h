//
//  NSNumber+YRSafeCategory.h
//  YRSnippets
//
//  Created by 王晓宇 on 14-2-11.
//  Copyright (c) 2014年 王晓宇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (YRSafeCategory)
- (char)charValueSafe;
- (unsigned char)unsignedCharValueSafe;
- (short)shortValueSafe;
- (unsigned short)unsignedShortValueSafe;
- (int)intValueSafe;
- (unsigned int)unsignedIntValueSafe;
- (long)longValueSafe;
- (unsigned long)unsignedLongValueSafe;
- (long long)longLongValueSafe;
- (unsigned long long)unsignedLongLongValueSafe;
- (float)floatValueSafe;
- (double)doubleValueSafe;
- (BOOL)boolValueSafe;
- (NSInteger)integerValueSafe;
- (NSUInteger)unsignedIntegerValueSafe;
@end
