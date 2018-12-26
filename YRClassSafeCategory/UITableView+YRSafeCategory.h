//
//  UITableView+YRSafeCategory.h
//  YRSnippets
//
//  Created by 王晓宇 on 13-7-12.
//  Copyright (c) 2013年 王晓宇. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (YRSafeCategory)

-(void)reloadRowsAtIndexPathsSafe:(nullable NSArray<NSIndexPath *> *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation;

@end

NS_ASSUME_NONNULL_END
