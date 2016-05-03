//
//  UIView+NavigationBarButtonView.h
//  XCF
//
//  Created by daalphahwz on 16/5/3.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (NavigationBarButtonView)

/**
 *  返回一个包含Button的NavigationBarButtonView
 *
 *  @param image     图片
 *  @param target    按钮产生事件的目标
 *  @param action    按钮产生事件调用的方法
 *
 *  @return 包含Button的NavigationBarButtonView
 */
+ (UIView *)navigationBarButtonViewWithImage:(UIImage *)image taget:(id)target action:(SEL)action;

@end
