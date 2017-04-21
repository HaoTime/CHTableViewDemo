//
//  CHCommonTableViewCell.h
//  CHTableView
//
//  Created by HaoTime on 2016/11/21.
//  Copyright © 2016年 HaoTime. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CHCommonTableRow;

@protocol CHCommonTableViewCell<NSObject>

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentiifier;

@optional
- (void)refreshData:(CHCommonTableRow *)rowData
          tableView:(UITableView *)tableView;

@end
