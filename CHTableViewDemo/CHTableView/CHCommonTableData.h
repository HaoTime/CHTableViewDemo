//
//  CHCommonTableData.h
//  CHTableView
//
//  Created by HaoTime on 2016/11/21.
//  Copyright © 2016年 HaoTime. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SepLineLeft 15  //分割线距左边距离

//section key
#define HeaderTitle   @"headerTitle"  // - 区头标题
#define FooterTitle   @"footerTitle"  // - 区尾标题
#define HeaderHeight  @"headerHeight" // - 区头高度
#define FooterHeight  @"footerHeight" // - 区尾高度
#define RowContent    @"row"          // - row 内容

//row key
#define Title         @"title"        // - row 标题
#define DetailTitle   @"detailTitle"  // - row 小标题
#define CellClass     @"cellClass"    // - 自定义cell的类名
#define CellAction    @"action"       // - cell的点击事件
#define ExtraInfo     @"extraInfo"    // - 额外的一个属性，你可以合理运用它做一些你想做的事情。
#define RowHeight     @"rowHeight"    // - row的高度
#define SepLeftEdge   @"leftEdge"     // - 分割线距左的距离

//common key
#define Disable       @"disable"      // - cell不可见
#define ShowAccessory @"accessory"    // - cell显示>箭头
#define ForbidSelect  @"forbidSelect" // - cell不响应select事件




@interface CHCommonTableSection : NSObject

@property (nonatomic ,copy  ) NSString *headerTitle;
@property (nonatomic ,copy  ) NSArray  *rows;
@property (nonatomic ,copy  ) NSString *footerTitle;
@property (nonatomic ,assign) CGFloat  uiHeaderHeight;
@property (nonatomic ,assign) CGFloat  uiFooterHeight;

- (instancetype) initWithDict:(NSDictionary *)dict;

+ (NSArray *)sectionsWithData:(NSArray *)data;

@end




@interface CHCommonTableRow : NSObject

@property (nonatomic ,strong) NSString *title;
@property (nonatomic ,copy  ) NSString *detailTitle;
@property (nonatomic ,copy  ) NSString *cellClassName;
@property (nonatomic ,copy  ) NSString *cellActionName;
@property (nonatomic ,assign) CGFloat  uiRowHeight;
@property (nonatomic ,assign) CGFloat  sepLeftEdge;
@property (nonatomic ,assign) BOOL     showAccessory;
@property (nonatomic ,assign) BOOL     forbidSelect;
@property (nonatomic ,strong) id       extraInfo;

- (instancetype) initWithDict:(NSDictionary *)dict;

+ (NSArray *)rowsWithData:(NSArray *)data;

@end

