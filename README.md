# CHTableViewDemo ( UITableView 模块化 )

##  一、用法简介

 1、引入 demo 中的 CHTableView 文件夹及其中所有类<br>
 2、导入 "CHCommonTableData.h"，"CHCommonTableDelegate.h"，<br>
 3、声明 @property (nonatomic ,strong) CHCommonTableDelegate *delegator;<br>
 4、viewDidLoad 调用

    [self buildData];

    // --必须写在给 CHTableView 的 delegate 和 dataSource 赋值之前
    __weak typeof (self) weakSelf = self; // - block块，防止循环引用
    self.delegator = [[CHCommonTableDelegate alloc] initWithTableData:^NSArray *{
    return weakSelf.data;
    }];

    // --创建初始化tableview
    self.CHTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.CHTableView.backgroundColor = [UIColor whiteColor];
    self.CHTableView.delegate        = self.delegator;
    self.CHTableView.dataSource      = self.delegator;
    self.CHTableView.tableFooterView = [[UIView alloc] init]; // - 不显示空白cell
    [self.view addSubview:self.CHTableView];

 5、buildData 方法

    NSArray *data = @[
        @{
        HeaderTitle :@"区头",

        HeaderHeight:@([HeaderTitle sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13.f]}].height), // - 自适应
        RowContent  :@[
                @{
                Title:@"第1行",
                DetailTitle:@"哈哈",
                },
                @{
                Title:@"第2行",
                DetailTitle:@"嘻嘻",
                },
        ],
        FooterTitle :@"区尾",
        FooterHeight:@(30),
        },
    ];

    self.data = [CHCommonTableSection sectionsWithData:data];

##  二、效果展示

![](https://github.com/HaoTime/CHTableViewDemo/blob/master/design.png)

