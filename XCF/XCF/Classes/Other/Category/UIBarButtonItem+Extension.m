//
//  UIBarButtonItem+Extension.m
//  XCF
//
//  Created by daalphahwz on 16/5/10.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

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

+ (UIBarButtonItem *)customItemWithTitle:(NSString *)title color:(UIColor *)color taget:(id)target action:(SEL)action{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    [button sizeToFit];
    UIView *placeholderView = [[UIView alloc] init];
    placeholderView.bounds = button.bounds;
    [placeholderView addSubview:button];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:placeholderView];
    
}



@end
