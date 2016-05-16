//
//  XCFHomeHeaderView.h
//  XCF
//
//  Created by  Mac on 16/5/11.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XCFContentItem;
@interface XCFHomeHeaderView : UIView

+ (instancetype) homeHeaderView;

@property (nonatomic, strong)XCFContentItem *item;
@end
