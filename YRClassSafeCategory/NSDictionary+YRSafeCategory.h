//
//  NSDictionary+YRSafeCategory.h
//  YRSnippets
//
//  Created by 王晓宇 on 13-7-12.
//  Copyright (c) 2013年 王晓宇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (YRSafeCategory)
+(id)dictionaryWithObjectSafe:(id)object forKey:(id<NSCopying>)key;
-(id)objectForKeySafe:(id)aKey;
-(NSString*)stringForKeySafe:(id)akey;
-(NSNumber*)numberForKeySafe:(id)aKey;
-(NSInteger)integerForKeySafe:(id)aKey;

-(BOOL)boolForKeySafe:(id)aKey;
-(NSArray*)arrayForKeySafe:(id)aKey;
-(NSDictionary*)dictionaryForKeySafe:(id)aKey;
@end

@interface NSMutableDictionary (YRSafeCategory)
-(void)setObjectSafe:(id)anObject forKey:(id<NSCopying>)aKey;
@end