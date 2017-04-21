//
//  UIView+CH.m
//  CHTableView
//
//  Created by HaoTime on 2016/11/21.
//  Copyright © 2016年 HaoTime. All rights reserved.
//

#import "UIView+CH.h"

@implementation UIView (CH)

- (CGFloat)ch_left {
    return self.frame.origin.x;
}

//////////////////////////////
- (void)setCh_left:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

//////////////////////////////
- (CGFloat)ch_top {
    return self.frame.origin.y;
}

//////////////////////////////
- (void)setCh_top:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

//////////////////////////////
- (CGFloat)ch_right {
    return self.frame.origin.x + self.frame.size.width;
}

//////////////////////////////
- (void)setCh_right:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

//////////////////////////////
- (CGFloat)ch_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

//////////////////////////////
- (void)setCh_bottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

//////////////////////////////
- (CGFloat)ch_centerX {
    return self.center.x;
}

//////////////////////////////
- (void)setCh_centerX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

//////////////////////////////
- (CGFloat)ch_centerY {
    return self.center.y;
}

//////////////////////////////
- (void)setCh_centerY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

//////////////////////////////
- (CGFloat)ch_width {
    return self.frame.size.width;
}

//////////////////////////////
- (void)setCh_width:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

//////////////////////////////
- (CGFloat)ch_height {
    return self.frame.size.height;
}

//////////////////////////////
- (void)setCh_height:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

//////////////////////////////
- (CGPoint)ch_origin {
    return self.frame.origin;
}

//////////////////////////////
- (void)setCh_origin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

//////////////////////////////
- (CGSize)ch_size {
    return self.frame.size;
}

//////////////////////////////
- (void)setCh_size:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (UIViewController *)ch_viewController{
    for (UIView* next = self; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}
@end
