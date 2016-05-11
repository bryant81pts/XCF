//
//  UIView+Extension.m
//  XCF
//
//  Created by  Mac on 16/5/11.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)setXcf_x:(CGFloat)xcf_x{
    
    CGRect rect = self.frame;
    
    rect.origin.x = xcf_x;
    
    self.frame = rect;
    
}

- (CGFloat)xcf_x{
    
    return self.frame.origin.x;
}

- (void)setXcf_y:(CGFloat)xcf_y{
    
    CGRect rect = self.frame;
    
    rect.origin.y = xcf_y;
    
    self.frame = rect;
}

- (CGFloat)xcf_y{
    
    return self.frame.origin.y;
}

- (void)setXcf_width:(CGFloat)xcf_width{
    
    
    CGRect rect = self.frame;
    
    rect.size.width = xcf_width;
    
    self.frame = rect;
}


- (CGFloat)xcf_width{
    
    return self.frame.size.width;
    
}


- (void)setXcf_height:(CGFloat)xcf_height{
    
    CGRect rect = self.frame;
    
    rect.size.height = xcf_height;
    
    self.frame = rect;
    
}


- (CGFloat)xcf_height{
    
    return self.frame.size.height;
}


- (void)setXcf_centerX:(CGFloat)xcf_centerX{
    
    CGPoint rect = self.center;
    
    rect.x = xcf_centerX;
    
    self.center = rect;
    
}

- (CGFloat)xcf_centerX{
    
    return self.center.x;
}

- (void)setXcf_centerY:(CGFloat)xcf_centerY{
    
    CGPoint rect = self.center;
    
    rect.y = xcf_centerY;
    
    self.center = rect;
}

- (CGFloat)xcf_centerY{
    
    return self.center.y;
}


@end
