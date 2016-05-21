//
//  XCFCellIssuesItem.h
//  XCF
//
//  Created by  Mac on 16/5/21.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XCFCellItem;
@interface XCFCellIssuesItem : NSObject
/** item的个数->这一section中cell的个数->issues数组中每个字典为一section*/
@property (nonatomic, assign) NSInteger items_count;
/** 标题->这个section的header*/
@property (nonatomic, strong) NSString *title;
/** 描述cell的模型(XCFCellItem)数组*/
@property (nonatomic, strong) NSArray<XCFCellItem *> *items;
/** issue对应的id*/
@property (nonatomic, assign) NSInteger issue_id;
/** 发布时间*/
@property (nonatomic, strong) NSString *publish_date;
/** 今日事件*/
@property (nonatomic, strong) NSArray *today_events;

@end
