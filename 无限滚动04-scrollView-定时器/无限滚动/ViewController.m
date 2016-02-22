//
//  ViewController.m
//  无限滚动
//
//  Created by xmg on 16/2/21.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "ViewController.h"
#import "XMGInfiniteScrollView.h"
#import "MyScrollView.h"

@interface ViewController () <XMGInfiniteScrollViewDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // scrollView
    XMGInfiniteScrollView *scrollView = [[XMGInfiniteScrollView alloc] initWithFrame:CGRectMake(0, 0, 375, 200)];
    scrollView.images = @[
                          [UIImage imageNamed:@"image0"],
                          [UIImage imageNamed:@"image1"],
                          [UIImage imageNamed:@"image2"],
                          [UIImage imageNamed:@"image3"]
                          ];
    scrollView.delegate = self;
    scrollView.pageControl.pageIndicatorTintColor = [UIColor redColor];
    scrollView.pageControl.currentPageIndicatorTintColor = [UIColor yellowColor];
//    scrollView.direction = XMGInfiniteScrollViewDirectionVertical;
    [self.view addSubview:scrollView];
}

#pragma mark - <XMGInfiniteScrollViewDelegate>
- (void)infiniteScrollView:(XMGInfiniteScrollView *)scrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"点击了第%zd个图片", index);
}
@end
