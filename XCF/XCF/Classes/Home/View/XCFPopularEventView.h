//
//  XCFPopularEventView.h
//  XCF
//
//  Created by  Mac on 16/5/16.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XCFEventItem;
@interface XCFPopularEventView : UIView

+ (instancetype) popularEventView;

@property (nonatomic, strong)XCFEventItem *item;
@end
