//
//  NSDictionary+YRSafeCategory.h
//  YRSnippets
//
//  Created by 王晓宇 on 13-7-12.
//  Copyright (c) 2013年 王晓宇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary<__covariant KeyType, __covariant ObjectType> (YRSafeCategory)
+ (instancetype)dictionaryWithObjectSafe:(nullable ObjectType)object forKey:(nullable KeyType<NSCopying>)key;
- (nullable ObjectType)objectForKeySafe:(nullable KeyType)aKey;
- (nullable NSString *)stringForKeySafe:(nullable KeyType)akey;
- (nullable NSNumber *)numberForKeySafe:(nullable KeyType)aKey;
- (NSInteger)integerForKeySafe:(nullable KeyType)aKey;
- (long long)longlongForKeySafe:(nullable KeyType)aKey;

- (BOOL)boolForKeySafe:(nullable KeyType)aKey;
- (nullable NSArray *)arrayForKeySafe:(nullable KeyType)aKey;
- (nullable NSDictionary *)dictionaryForKeySafe:(nullable KeyType)aKey;
@end

@interface NSMutableDictionary<KeyType, ObjectType> (YRSafeCategory)
- (void)setObjectSafe:(nullable ObjectType)anObject forKey:(nullable KeyType<NSCopying>)aKey;
@end

NS_ASSUME_NONNULL_END
