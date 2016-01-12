//
//  UITableView+YRSafeCategory.m
//  YRSnippets
//
//  Created by 王晓宇 on 13-7-12.
//  Copyright (c) 2013年 王晓宇. All rights reserved.
//

#import "UITableView+YRSafeCategory.h"
#import "YRClassSafeCategoryConfig.h"

@implementation UITableView (YRSafeCategory)
- (void)reloadRowsAtIndexPathsSafe:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation {
    NSMutableArray *tempArray = [[NSMutableArray alloc] initWithCapacity:indexPaths.count];
    NSInteger totalSelections = [self numberOfSections];
    for (NSIndexPath *indexPath in indexPaths) {
        NSInteger totalRows = [self numberOfRowsInSection:indexPath.section];
        if (indexPath.section < 0 || indexPath.section >= totalSelections ||
            indexPath.row >= totalRows) {
            YRWarningLog(@"UITableView reloadRowsAtIndexPathsSafe find indexPath %@ out of bounds ,tableView cell class type=%@",indexPath, [[self visibleCells] count] > 0 ? [[[self visibleCells] objectAtIndex:0] class] : @"unknown");
        } else {
            [tempArray addObject:indexPath];
        }
    }
    [self reloadRowsAtIndexPaths:tempArray withRowAnimation:animation];
}
@end
