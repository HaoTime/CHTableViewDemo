//
//  CHCommonTableDelegate.h
//  CHTableView
//
//  Created by HaoTime on 2016/11/21.
//  Copyright © 2016年 HaoTime. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHCommonTableDelegate : NSObject<UITableViewDataSource,UITableViewDelegate>

- (instancetype) initWithTableData:(NSArray *(^)(void))data;

@property (nonatomic ,assign) CGFloat defaultSeparatorLeftEdge;

@end
