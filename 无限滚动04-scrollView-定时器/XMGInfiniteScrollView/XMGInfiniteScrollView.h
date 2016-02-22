//
//  XMGInfiniteScrollView.h
//  无限滚动
//
//  Created by xmg on 16/2/21.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XMGInfiniteScrollView;

@protocol XMGInfiniteScrollViewDelegate <NSObject>
@optional
- (void)infiniteScrollView:(XMGInfiniteScrollView *)scrollView didSelectItemAtIndex:(NSInteger)index;
@end

//typedef enum {
//    /** 水平滚动（左右滚动） */
//    XMGInfiniteScrollViewDirectionHorizontal = 0,
//    /** 垂直滚动（上下滚动） */
//    XMGInfiniteScrollViewDirectionVertical
//} XMGInfiniteScrollViewDirection;

typedef NS_ENUM(NSInteger, XMGInfiniteScrollViewDirection) {
    /** 水平滚动（左右滚动） */
    XMGInfiniteScrollViewDirectionHorizontal = 0,
    /** 垂直滚动（上下滚动） */
    XMGInfiniteScrollViewDirectionVertical
};

@interface XMGInfiniteScrollView : UIView
/** 图片数据(里面存放UIImage对象) */
@property (nonatomic, strong) NSArray *images;
/** 图片数据*/
//@property (nonatomic, strong) NSArray *imageUrls;
/** 滚动方向 */
@property (nonatomic, assign) XMGInfiniteScrollViewDirection direction;
/** 代理 */
@property (nonatomic, weak) id<XMGInfiniteScrollViewDelegate> delegate;

@property (nonatomic, weak, readonly) UIPageControl *pageControl;
@end
