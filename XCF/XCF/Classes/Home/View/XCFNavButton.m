//
// XCFNavButton.m
//  XCF
//
//  Created by  Mac on 16/5/11.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFNavButton.h"
#import <UIImageView+WebCache.h>


@implementation XCFNavButton

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
    
        [self.titleLabel setFont:[UIFont systemFontOfSize:13.0]];
        [self.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
    }
    
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    /** 重新调整内部imageView和titleLabel的位置*/
    CGFloat imageWH = 44.0;
    CGFloat imageX = (self.xcf_width - imageWH) * 0.5;
    CGFloat imageY = 5.0;
    self.imageView.frame = CGRectMake(imageX, imageY, imageWH, imageWH);
    
    CGFloat titleLabelCenterX = self.xcf_width * 0.5;
    CGFloat titleLabelCenterY = CGRectGetMaxY(self.imageView.frame) + 10.0;
    self.titleLabel.xcf_width = self.xcf_width;
    self.titleLabel.center = CGPointMake(titleLabelCenterX, titleLabelCenterY);
    
}

- (void)setHighlighted:(BOOL)highlighted{}

@end
