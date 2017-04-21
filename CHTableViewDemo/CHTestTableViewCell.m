//
//  CHTestTableViewCell.m
//  CHTableViewDemo
//
//  Created by Mark on 2017/4/20.
//  Copyright © 2017年 Mark. All rights reserved.
//

#import "CHTestTableViewCell.h"

#import "CHCommonTableData.h"
#import "UIView+CH.h"

@interface CHTestTableViewCell()


@property (nonatomic,strong) UILabel *nameLabel;

@property (nonatomic,strong) UILabel *accountLabel;

@end

@implementation CHTestTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

        _nameLabel      = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel.font = [UIFont systemFontOfSize:18.f];
        [self addSubview:_nameLabel];
        _accountLabel   = [[UILabel alloc] initWithFrame:CGRectZero];
        _accountLabel.font = [UIFont systemFontOfSize:14.f];
        _accountLabel.textColor = [UIColor grayColor];
        [self addSubview:_accountLabel];
    }
    return self;
}

- (void)refreshData:(CHCommonTableRow *)rowData tableView:(UITableView *)tableView{

    NSString *phone = rowData.extraInfo;
    NSString *name  = rowData.title;
    
    self.nameLabel.text    = name ;
    [self.nameLabel sizeToFit];
    self.accountLabel.text = [NSString stringWithFormat:@"电话：%@",phone];
    [self.accountLabel sizeToFit];
}


#define AvatarLeft 30
#define TitleAndAvatarSpacing 12
#define TitleTop 22
#define AccountBottom 22

- (void)layoutSubviews{
    [super layoutSubviews];

    self.nameLabel.ch_left = TitleAndAvatarSpacing;
    self.nameLabel.ch_top  = TitleTop;
    self.accountLabel.ch_left    = self.nameLabel.ch_left;
    self.accountLabel.ch_bottom  = self.ch_height - AccountBottom;
}



@end
