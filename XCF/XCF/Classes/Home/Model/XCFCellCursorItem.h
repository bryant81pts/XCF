//
//  XCFCellCursorItem.h
//  XCF
//
//  Created by  Mac on 16/5/21.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XCFCellCursorItem : NSObject
/** 是否有前一天的内容*/
@property (nonatomic, assign) BOOL has_next;
/** 是否有下一天的内容*/
@property (nonatomic, assign) BOOL has_prev;
/** 下一天的日期 YYYY-MM-DD*/
@property (nonatomic, strong) NSString *prev;
/** 前一天的日期 YYYY-MM-DD*/
@property (nonatomic, strong) NSString *next;

@end
