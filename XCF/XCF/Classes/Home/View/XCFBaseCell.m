//
//  XCFBaseCell.m
//  XCF
//
//  Created by  Mac on 16/5/22.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFBaseCell.h"

@implementation XCFBaseCell

- (void)setFrame:(CGRect)frame
{
    frame.size.height -= XCFMargin;
    [super setFrame:frame];
}


@end
