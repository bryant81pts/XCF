//
//  XCFSectionHeader.m
//  XCF
//
//  Created by  Mac on 16/5/23.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFSectionHeader.h"

@interface XCFSectionHeader()

@property (nonatomic, weak)UILabel *label;

@end

@implementation XCFSectionHeader

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithReuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.contentView.backgroundColor = ThemeColor;
        
        UILabel *titleL = [[UILabel alloc] init];
        titleL.textColor = [UIColor blackColor];
        titleL.textAlignment = NSTextAlignmentCenter;
        titleL.xcf_centerX = self.xcf_width * 0.5;
        titleL.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        titleL.font = [UIFont systemFontOfSize:13.0];
        [self.contentView addSubview:titleL];
        self.label = titleL;
        
    }
    return self;
}


- (void)setTitle:(NSString *)title{
    
    _title = title;
    self.label.text = title;

}


@end
