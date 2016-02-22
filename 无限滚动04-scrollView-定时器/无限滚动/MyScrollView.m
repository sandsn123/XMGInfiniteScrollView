//
//  MyScrollView.m
//  无限滚动
//
//  Created by xmg on 16/2/21.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.pageControl.frame = CGRectMake(0, 0, 100, 25);
}

@end
