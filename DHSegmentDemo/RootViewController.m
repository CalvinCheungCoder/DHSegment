//
//  RootViewController.m
//  DHSegmentDemo
//
//  Created by 张丁豪 on 2017/4/27.
//  Copyright © 2017年 zhangdinghao. All rights reserved.
//

#import "RootViewController.h"
#import "NextViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:231/255.0 green:231/255.0 blue:231/255.0 alpha:1];
    
    self.title = @"Root";
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(20, 160, [UIScreen mainScreen].bounds.size.width-40, 40)];
    btn.backgroundColor = [UIColor orangeColor];
    btn.layer.cornerRadius = 5;
    btn.layer.masksToBounds = YES;
    [btn setTitle:@"Next Page" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick
{
    [self.navigationController pushViewController:[NextViewController new] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
