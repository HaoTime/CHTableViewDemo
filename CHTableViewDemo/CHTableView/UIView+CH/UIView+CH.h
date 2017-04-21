//
//  UIView+CH.h
//  CHTableView
//
//  Created by HaoTime on 2016/11/21.
//  Copyright © 2016年 HaoTime. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CH)

//  = frame.origin.x
@property (nonatomic) CGFloat ch_left;

//  = frame.origin.y
@property (nonatomic) CGFloat ch_top;

//  = frame.origin.x + frame.size.width
@property (nonatomic) CGFloat ch_right;

//  = frame.origin.y + frame.size.height
@property (nonatomic) CGFloat ch_bottom;

//  = frame.size.width
@property (nonatomic) CGFloat ch_width;

//  = frame.size.height
@property (nonatomic) CGFloat ch_height;

//  = center.x
@property (nonatomic) CGFloat ch_centerX;

//  = center.y
@property (nonatomic) CGFloat ch_centerY;

//  = frame.origin
@property (nonatomic) CGPoint ch_origin;

//  = frame.size
@property (nonatomic) CGSize ch_size;

// - 找到自己的vc
- (UIViewController *)ch_viewController;

@end
