//
//  NextViewController.m
//  DHSegmentDemo
//
//  Created by 张丁豪 on 2017/4/27.
//  Copyright © 2017年 zhangdinghao. All rights reserved.
//

#import "NextViewController.h"
#import "DHSegmentView.h"
#import "OneViewController.h"
#import "TwoViewController.h"

@interface NextViewController ()<DHSegmentViewDelegate>

@property (nonatomic, strong) DHSegmentView *segment;

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithRed:231/255.0 green:231/255.0 blue:231/255.0 alpha:1];
    
    OneViewController *one = [[OneViewController alloc]init];
    TwoViewController *two = [[TwoViewController alloc]init];
    
    [self addChildViewController:one];
    [self addChildViewController:two];
    
    
    self.segment = [[DHSegmentView alloc] initWithChildControllers:self.childViewControllers childTitles:@[@"新浪",@"百度"]];
    self.segment.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64);
    self.segment.delegate = self;
    self.segment.tabItemFont = [UIFont systemFontOfSize:16];
    self.segment.unSelectedColor = [UIColor blackColor];
    self.segment.selectedColor = [UIColor redColor];
    self.segment.selectedTabIndex = 1;
    self.segment.indicatorHeight = 2;
    self.segment.titleStyle = DHSegmentTitleStyleBlend;
    self.segment.indicatorStyle = DHSegemntTabIndicatorStyleStretch;
    self.segment.bodyBounces = NO;
    self.segment.indicatorWidth = 20;
    self.segment.tabItemFont = [UIFont systemFontOfSize:15];
    [self.view addSubview:self.segment];
}

- (void)pageSegmentViewDidEndChange {
    
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
