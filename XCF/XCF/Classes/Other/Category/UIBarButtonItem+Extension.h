//
//  UIBarButtonItem+Extension.h
//  XCF
//
//  Created by daalphahwz on 16/5/10.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+ (UIBarButtonItem *)customItemWithImage:(UIImage *)image taget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)customItemWithTitle:(NSString *)title color:(UIColor *)color taget:(id)target action:(SEL)action;

@end
