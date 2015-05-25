//
//  ViewController.m
//  YRClassSafeCategoryDemo
//
//  Created by 王晓宇 on 15/5/25.
//  Copyright (c) 2015年 YueRuo. All rights reserved.
//

#import "ViewController.h"
#import "YRClassSafeCategory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self test];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)test{
    NSDictionary *dictionary = @{@"num1":@1,
                          @"num2":@"2",
                          @"string":@"this is a string",
                          @"dic":@{@"key":@"value"},
                          @"array":@[@1,@2],
                          };
    
    //正常情况
    NSInteger num1 = [dictionary integerForKeySafe:@"num1"];
    NSInteger num2 = [dictionary integerForKeySafe:@"num2"];
    NSString *string = [dictionary stringForKeySafe:@"string"];
    NSDictionary *dic = [dictionary dictionaryForKeySafe:@"dic"];
    NSArray *array = [dictionary arrayForKeySafe:@"array"];
    NSLog(@"正常取数据:%zd\n%zd\n%@\n%@\n%@",num1,num2,string,dic,array);
    
    //非法情况，取出来的类型不对
    NSInteger num1Wrong = [dictionary integerForKeySafe:@"string"];
    NSString *stringWrong = [dictionary stringForKeySafe:@"dic"];
    NSDictionary *dicWrong = [dictionary dictionaryForKeySafe:@"num1"];
    NSArray *arrayWrong = [dictionary arrayForKeySafe:@"dic"];
    
    NSLog(@"就算类型不对，也可以安全执行过去，运行正常不会崩溃:\n%zd\n%@\n%@\n%@",num1Wrong,stringWrong,dicWrong,arrayWrong);
}

@end
