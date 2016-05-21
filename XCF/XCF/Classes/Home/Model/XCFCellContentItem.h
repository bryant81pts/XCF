//
//  XCFCellContentItem.h
//  XCF
//
//  Created by  Mac on 16/5/21.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XCFCellCursorItem;
@class XCFCellIssuesItem;
@interface XCFCellContentItem : NSObject

@property (nonatomic, strong) XCFCellCursorItem *cursor;
/** issues数组的字典个数*/
@property (nonatomic, assign) NSInteger count;

@property (nonatomic, strong) NSArray<XCFCellIssuesItem*> *issues;

@end
