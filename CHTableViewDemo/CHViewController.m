//
//  CHViewController.m
//  CHTableView
//
//  Created by Mark on 2016/11/21.
//  Copyright © 2016年 Mark. All rights reserved.
//

#import "CHViewController.h"
#import "CHCommonTableData.h"
#import "CHCommonTableDelegate.h"

#import "CHTestTableViewCell.h"

@interface CHViewController ()

@property (nonatomic ,strong) NSArray *data;
@property (nonatomic ,strong) CHCommonTableDelegate *delegator;
@property (nonatomic ,strong) UITableView *CHTableView;

@end

@implementation CHViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"首页";
    
    
    [self buildData];

    // --必须写在给 CHTableView 的 delegate 和 dataSource 赋值之前
    __weak typeof (self) weakSelf = self; // - block块，防止循环引用
    self.delegator = [[CHCommonTableDelegate alloc] initWithTableData:^NSArray *{
        return weakSelf.data;
    }];
    
    self.automaticallyAdjustsScrollViewInsets = YES;
    // --创建初始化tableview
    self.CHTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.CHTableView.backgroundColor = [UIColor whiteColor];
    self.CHTableView.delegate        = self.delegator;
    self.CHTableView.dataSource      = self.delegator;
    self.CHTableView.tableFooterView = [[UIView alloc] init]; // - 不显示空白cell
    [self.view addSubview:self.CHTableView];
    
}

- (void)buildData {
    
//    NSArray *data = @[
//
//                       @{
//                          HeaderTitle :@"区头",
//                          HeaderHeight:@([HeaderTitle sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13.f]}].height), // - 自适应
//                          RowContent  :@[
//                                  @{
//                                      Title:@"第1行",
//                                      DetailTitle:@"哈哈",
//                                      },
//                                  @{
//                                      Title:@"第2行",
//                                      DetailTitle:@"嘻嘻",
//                                      },
//
//                                        ],
//                          FooterTitle :@"区尾",
//                          FooterHeight:@(30),
//                        },
//                       
//                    ];
    
    
    NSArray *data = @[
                      @{
                          HeaderTitle:@"",
                          HeaderHeight:@(20),
                          RowContent :@[
                                  @{
                                      Title         : @"个人简介",
                                      ExtraInfo     : @"136********",
                                      CellClass     : @"CHTestTableViewCell",
                                      RowHeight     : @(100),
                                      CellAction    : @"onTouchPortrait:",
                                      ShowAccessory : @(YES)
                                      },
                                  ],
                          FooterTitle:@"",
                          FooterHeight:@(20)
                          },
                      @{
                          HeaderTitle:@"",
                          HeaderHeight:@(20),
                          RowContent :@[
                                  @{
                                      Title      :@"昵称",
                                      DetailTitle:@"HaoTime",
                                      CellAction :@"onTouchNickSetting:",
                                      RowHeight     : @(50),
                                      ShowAccessory : @(YES),
                                      },
                                  @{
                                      Title      :@"性别",
                                      DetailTitle:@"男",
                                      CellAction :@"onTouchGenderSetting:",
                                      RowHeight     : @(50),
                                      ShowAccessory : @(YES)
                                      },
                                  @{
                                      Title      :@"生日",
                                      DetailTitle:@"保密",
                                      CellAction :@"onTouchBirthSetting:",
                                      RowHeight     : @(50),
                                      ShowAccessory : @(YES)
                                      },
                                  @{
                                      Title      :@"手机",
                                      DetailTitle:@"136********",
                                      CellAction :@"onTouchTelSetting:",
                                      RowHeight     : @(50),
                                      ShowAccessory : @(YES)
                                      },
                                  @{
                                      Title      :@"邮箱",
                                      DetailTitle:@"124****587@qq.com",
                                      CellAction :@"onTouchEmailSetting:",
                                      RowHeight     : @(50),
                                      ShowAccessory : @(YES)
                                      },
                                  @{
                                      Title      :@"签名",
                                      DetailTitle:@"哎呦不错哦",
                                      CellAction :@"onTouchSignSetting:",
                                      RowHeight     : @(50),
                                      ShowAccessory : @(YES)
                                      },
                                  ],
                          FooterTitle:@"",
                          FooterHeight:@(20)
                          },
                      ];
    
    self.data = [CHCommonTableSection sectionsWithData:data];
}

// --刷新数据
- (void)refreshData{
    [self buildData];
    [self.CHTableView reloadData];
}

- (void)onTouchPortrait:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"个人简介" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:sureAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)onTouchNickSetting:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"昵称" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:sureAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)onTouchGenderSetting:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"性别" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:sureAction];
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)onTouchBirthSetting:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"生日" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:sureAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)onTouchTelSetting:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"手机" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:sureAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)onTouchEmailSetting:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"邮箱" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:sureAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)onTouchSignSetting:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"签名" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:sureAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
