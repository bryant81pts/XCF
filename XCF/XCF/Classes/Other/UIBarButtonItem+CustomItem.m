//
//  UIBarButtonItem+CustomItem.m
//  XCF
//
//  Created by  Mac on 16/5/4.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "UIBarButtonItem+CustomItem.h"

@implementation UIBarButtonItem (CustomItem)

+ (UIBarButtonItem *)customItemWithImage:(UIImage *)image taget:(id)target action:(SEL)action{
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button sizeToFit];
    UIView *placeholderView = [[UIView alloc] init];
    placeholderView.bounds = button.bounds;
    [placeholderView addSubview:button];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:placeholderView];
    
}


@end
