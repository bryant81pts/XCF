//
//  XCFHomeHeaderView.m
//  XCF
//
//  Created by  Mac on 16/5/11.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFHomeHeaderView.h"
#import "XCFNavButton.h"
#import <Masonry.h>
#import <UIImageView+WebCache.h>

@interface XCFHomeHeaderView()
/** 流行菜谱*/
@property (weak, nonatomic) IBOutlet UIView *popularRecipeView;
/** 中部scrollView*/
@property (weak, nonatomic) IBOutlet UIScrollView *middleScrollView;
/** 底部scrollView*/
@property (weak, nonatomic) IBOutlet UIScrollView *bottomScrollView;
/** 中部scrollView中按钮的宽度*/
@property (nonatomic, assign) CGFloat buttonWidth;


@end

@implementation XCFHomeHeaderView

+ (instancetype)homeHeaderView{
    
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class])
                                          owner:nil
                                        options:nil] firstObject];
}

- (void)awakeFromNib{
    
    [self setupTopView];
    [self setupMiddleScrollView];
    [self setupBottomScrollView];
}

- (void)setupTopView{
    
    
    
}

- (void)setupMiddleScrollView{
    
    NSInteger buttonCount = 4;
    CGFloat buttonWidth = self.middleScrollView.xcf_width / buttonCount;
    self.middleScrollView.backgroundColor = [UIColor whiteColor];
    self.middleScrollView.contentSize = CGSizeMake(buttonCount * buttonWidth + 1, 0);
    self.middleScrollView.showsHorizontalScrollIndicator = NO;
    self.buttonWidth = buttonWidth;
    for (int i = 0; i < buttonCount; i++) {
        
        XCFNavButton *button = [[XCFNavButton alloc] init];
        [button addTarget:self action:@selector(headerViewButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [button setImage:[UIImage imageNamed:@"convenient_share_wx_22x22_"] forState:UIControlStateNormal];
        [button setTitle:@"Fuck" forState:UIControlStateNormal];
        [button setTag:i];
        button.backgroundColor = RandomColor;
        [self.middleScrollView addSubview:button];
        i == 0 ? [self addConstraintToMiddleScrollViewButton:button
                                                 buttonWidth:self.buttonWidth
                                                  leftMargin:0] : [self addConstraintToMiddleScrollViewButton:button
                                                                                                  buttonWidth:self.buttonWidth
                                                                                                   leftMargin:i * self.buttonWidth];
    }
}

- (void)setupBottomScrollView{
    
    self.bottomScrollView.backgroundColor = [UIColor greenColor];
}


- (void)addConstraintToMiddleScrollViewButton:(UIButton *)button
                                  buttonWidth:(CGFloat)buttonWidth
                                   leftMargin:(CGFloat) leftMargin{
 
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.middleScrollView.mas_top);
        make.left.equalTo(@(leftMargin));
        make.width.equalTo(@(buttonWidth));
        make.height.equalTo(self.middleScrollView.mas_height);
        
    }];
    
}

- (void)headerViewButtonClick:(XCFNavButton *)button {
    
    XCFFunc;
    
}


@end
