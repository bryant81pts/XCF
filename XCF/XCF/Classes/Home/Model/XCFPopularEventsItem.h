//
//  XCFPopularEventsItem.h
//  XCF
//
//  Created by  Mac on 16/5/16.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XCFEventItem;
@interface XCFPopularEventsItem : NSObject

/** 流行事件(底部scrollview)的个数*/
@property (assign, nonatomic) NSInteger count;
/** 对应事件模型数组*/
@property (nonatomic, strong) NSArray<XCFEventItem *> *events;

@end
