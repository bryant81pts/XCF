//
//  XCFCellItem.h
//  XCF
//
//  Created by  Mac on 16/5/21.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XCFCellIssuesContentsItem;
@interface XCFCellItem : NSObject
/** 发布时间*/
@property (nonatomic, strong) NSString *publish_time;
/** 对应的url*/
@property (nonatomic, strong) NSString *url;
/** cell的模板*/
@property (nonatomic, assign) NSInteger cellTemplate; //template
/** cell对应的id*/
@property (nonatomic, assign) NSInteger ID; //id
/** cell内容的模型->真正描述cell的模型*/
@property (nonatomic, strong) XCFCellIssuesContentsItem *contents;
/** ???*/
@property (nonatomic, strong) NSString *column_name;




@end
