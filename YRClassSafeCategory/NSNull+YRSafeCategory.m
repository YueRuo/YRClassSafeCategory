//
//  NSNull+YRSafeCategory.m
//  YRSnippets
//
//  Created by 王晓宇 on 16-1-11.
//  Copyright (c) 2013年 王晓宇. All rights reserved.
//

#import "NSNull+YRSafeCategory.h"

static NSArray *_yrNullObjects;

@implementation NSNull (YRSafeCategory)

+(void)load{
    _yrNullObjects = @[
                      [NSMutableArray arrayWithCapacity:1],
                      [NSMutableDictionary dictionaryWithCapacity:1],
                      [NSMutableString stringWithString:@""],
                      [NSNumber numberWithInt:0]
                      ];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector{
    NSMethodSignature *signature = [super methodSignatureForSelector:selector];
    if (signature != nil){
        return signature;
    }
    for (NSObject *object in _yrNullObjects){
        signature = [object methodSignatureForSelector:selector];
        if (signature){
            if (strcmp(signature.methodReturnType, "@") == 0){
                signature = [self methodSignatureForSelector:@selector(_yrNullNil)];
            }
            break;
        }
    }
    return signature;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation{
    if (strcmp(anInvocation.methodSignature.methodReturnType, "@") == 0){
        anInvocation.selector = @selector(_yrNullNil);
        [anInvocation invokeWithTarget:self];
        return;
    }
    for (NSObject *object in _yrNullObjects){
        if ([object respondsToSelector:anInvocation.selector]){
            [anInvocation invokeWithTarget:object];
            return;
        }
    }
}

- (id)_yrNullNil{
    return nil;
}
@end
