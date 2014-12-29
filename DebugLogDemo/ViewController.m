//
//  ViewController.m
//  DebugLogDemo
//
//  Created by timliu on 14-12-29.
//  Copyright (c) 2014年 timliu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// 对于此viewDidLoad方法，已经在"UIViewController+Debug.m",写了方法进行拦截了。
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self test];
    [self viewDidLoad:@""];
}

- (void) test
{
    MyLog(@"--->");
    
}



- (void)viewDidLoad: (NSString *)str
{
    NSLog(@"viewDidLoad: (NSString *)str-->");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
