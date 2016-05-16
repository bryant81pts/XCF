//
//  XCFEventItem.h
//  XCF
//
//  Created by  Mac on 16/5/16.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <Foundation/Foundation.h>



@class XCFDishesItem;
@interface XCFEventItem : NSObject

/** 作品数量*/
@property (nonatomic, assign) NSInteger n_dishes;
/** 作品对应ID*/
@property (nonatomic, strong) NSString *ID;
/** 作品对应模型(图片)*/
@property (nonatomic, strong) XCFDishesItem *dishes;
/** 作品的类别(早餐\午餐\晚餐)*/
@property (nonatomic, strong) NSString *name;

@end
