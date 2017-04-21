//
//  CHCommonTableData.m
//  CHTableView
//
//  Created by HaoTime on 2016/11/21.
//  Copyright © 2016年 HaoTime. All rights reserved.
//

#import "CHCommonTableData.h"

#define DefaultUIRowHeight     50.f  // - 默认row高
#define DefaultUIHeaderHeight  44.f  // - 默认区头高度
#define DefaultUIFooterHeight  44.f  // - 默认区尾高度



@implementation CHCommonTableSection

- (instancetype) initWithDict:(NSDictionary *)dict {
    
    if ([dict[Disable] boolValue]) {
        return nil;
    }
    
    self = [super init];
    if (self) {
        _headerTitle    = dict[HeaderTitle];
        _footerTitle    = dict[FooterTitle];
        _uiHeaderHeight = [dict[HeaderHeight] floatValue];
        _uiFooterHeight = [dict[FooterHeight] floatValue];
        _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : DefaultUIHeaderHeight;
        _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : DefaultUIFooterHeight;
        _rows = [CHCommonTableRow rowsWithData:dict[RowContent]];
    }
    return self;
}

+ (NSArray *)sectionsWithData:(NSArray *)data {
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    for (NSDictionary *dict in data) {
        CHCommonTableSection *section = [[CHCommonTableSection alloc] initWithDict:dict];
        if (section) {
            [array addObject:section];
        }
    }
    return array;
}

@end



@implementation CHCommonTableRow

- (instancetype) initWithDict:(NSDictionary *)dict {
    
    if ([dict[Disable] boolValue]) {
        return nil;
    }
    self = [super init];
    if (self) {
        _title          = dict[Title];
        _detailTitle    = dict[DetailTitle];
        _cellClassName  = dict[CellClass];
        _cellActionName = dict[CellAction];
        _uiRowHeight    = dict[RowHeight] ? [dict[RowHeight] floatValue] : DefaultUIRowHeight;
        _extraInfo      = dict[ExtraInfo];
        _sepLeftEdge    = [dict[SepLeftEdge] floatValue];
        _showAccessory  = [dict[ShowAccessory] boolValue];
        _forbidSelect   = [dict[ForbidSelect] boolValue];
    }
    return self;
}

+ (NSArray *)rowsWithData:(NSArray *)data {
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    for (NSDictionary *dict in data) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            CHCommonTableRow *row = [[CHCommonTableRow alloc] initWithDict:dict];
            if (row) {
                [array addObject:row];
            }
        }
    }
    return array;
}


@end
