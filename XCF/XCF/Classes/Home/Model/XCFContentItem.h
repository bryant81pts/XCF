//
//  XCFContentItem.h
//  XCF
//
//  Created by  Mac on 16/5/16.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XCFNavButtonItem;
@class XCFPopularEventsItem;
@interface XCFContentItem : NSObject

/** 流行事件*/
@property (nonatomic, strong) XCFPopularEventsItem *pop_events;
/** 导航按钮(中间)模型数组*/
@property (nonatomic, strong) NSArray<XCFNavButtonItem *> *navs;
/** 流行菜谱图片URL*/
@property (nonatomic, strong) NSString *pop_recipe_picurl;

@end
