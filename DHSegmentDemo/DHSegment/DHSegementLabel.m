//
//  DHSegementLabel.m
//  DHSegmentDemo
//
//  Created by 张丁豪 on 2017/4/27.
//  Copyright © 2017年 zhangdinghao. All rights reserved.
//

#import "DHSegementLabel.h"

@implementation DHSegementLabel

- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    
    if([_fillColor isKindOfClass:[UIColor class]]) {
        [_fillColor setFill];
        UIRectFillUsingBlendMode(CGRectMake(rect.origin.x, rect.origin.y, rect.size.width*_process, rect.size.height), kCGBlendModeSourceIn);
    }
}

- (void)setProcess:(CGFloat)process {
    
    _process = process;
    [self setNeedsDisplay];
}


@end
