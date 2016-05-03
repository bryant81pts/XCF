//
//  UIView+NavigationBarButtonView.m
//  XCF
//
//  Created by daalphahwz on 16/5/3.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "UIView+NavigationBarButtonView.h"

@implementation UIView (NavigationBarButtonView)

+ (UIView *)navigationBarButtonViewWithImage:(UIImage *)image taget:(id)target action:(SEL)action{
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button sizeToFit];
    UIView *placeholderView = [[UIView alloc] init];
    placeholderView.bounds = button.bounds;
    [placeholderView addSubview:button];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return placeholderView;
}


@end
