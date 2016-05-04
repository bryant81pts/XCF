//
//  UIBarButtonItem+CustomItem.h
//  XCF
//
//  Created by  Mac on 16/5/4.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (CustomItem)

+ (UIBarButtonItem *)customItemWithImage:(UIImage *)image taget:(id)target action:(SEL)action;

@end
