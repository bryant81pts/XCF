//
//  XCFHomeHeaderView.m
//  XCF
//
//  Created by  Mac on 16/5/11.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFHomeHeaderView.h"
#import "XCFNavButton.h"
#import "XCFPopularEventView.h"
#import "XCFContentItem.h"
#import "XCFNavButtonItem.h"
#import "XCFPopularEventsItem.h"
#import "XCFEventItem.h"
#import "XCFDishesItem.h"
#import <Masonry.h>
#import <UIImageView+WebCache.h>
#import <UIButton+WebCache.h>

@interface XCFHomeHeaderView()
/** 流行菜谱*/
@property (weak, nonatomic) IBOutlet UIImageView *popularRecipeImageView;
/** 中部scrollView*/
@property (weak, nonatomic) IBOutlet UIScrollView *middleScrollView;
/** 底部scrollView*/
@property (weak, nonatomic) IBOutlet UIScrollView *bottomScrollView;
/** 中部scrollView中按钮的宽度*/
@property (nonatomic, assign) CGFloat buttonWidth;


@end

@implementation XCFHomeHeaderView

- (void)setItem:(XCFContentItem *)item{
    
    _item = item;
    
    //设置顶部
    [self.popularRecipeImageView sd_setImageWithURL:[NSURL URLWithString:item.pop_recipe_picurl]];
    
    //设置中间
    NSArray *navButtonsArray = item.navs;
    [self.middleScrollView.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        if ([obj isKindOfClass:[XCFNavButton class]]) {
            XCFNavButton *button = (XCFNavButton *)obj;
            XCFNavButtonItem *item = navButtonsArray[idx];
            [button sd_setImageWithURL:[NSURL URLWithString:item.picurl] forState:UIControlStateNormal];
            [button setTitle:item.name forState:UIControlStateNormal];
        }
        
    }];
    
    NSLog(@"%f", self.bottomScrollView.xcf_width);
    
    //设置底部
    XCFPopularEventsItem *popularEventsItem = item.pop_events;
    NSInteger count = popularEventsItem.count;
    self.bottomScrollView.contentSize = CGSizeMake(count * self.bottomScrollView.xcf_width, 0);
    for (int i = 0; i < count; i++) {
        
        XCFPopularEventView *popularEventView = [XCFPopularEventView popularEventView];
        XCFEventItem *item = popularEventsItem.events[i];
        [self.bottomScrollView addSubview:popularEventView];
        popularEventView.frame = CGRectMake(i * self.bottomScrollView.xcf_width, 0, self.bottomScrollView.xcf_width, self.bottomScrollView.xcf_height);
        popularEventView.item = item;
        
    }
    
    
    
}

+ (instancetype)homeHeaderView{
    
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class])
                                          owner:nil
                                        options:nil] firstObject];
}

- (void)awakeFromNib{
    
    [self setupMiddleScrollView];
    [self setupBottomScrollView];
    
}

- (void)setupMiddleScrollView{
    
    NSInteger buttonCount = 4;
    /** 此时从xib加载出来的时候self.middleScrollView.xcf_width为375,为xib文件内所设定的值 如果要适配需要使用屏幕宽计算按钮宽*/
    CGFloat buttonWidth = ScreenWidth / buttonCount;
    self.middleScrollView.backgroundColor = [UIColor whiteColor];
    self.middleScrollView.contentSize = CGSizeMake(buttonCount * buttonWidth + 1, 0);
    self.middleScrollView.showsHorizontalScrollIndicator = NO;
    self.buttonWidth = buttonWidth;
    for (int i = 0; i < buttonCount; i++) {
        
        XCFNavButton *button = [[XCFNavButton alloc] init];
        [button addTarget:self action:@selector(headerViewButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [button setTag:i];
        [self.middleScrollView addSubview:button];
        i == 0 ? [self addConstraintToMiddleScrollViewButton:button
                                                 buttonWidth:self.buttonWidth
                                                  leftMargin:0] : [self addConstraintToMiddleScrollViewButton:button
                                                                                                  buttonWidth:self.buttonWidth
                                                                                                   leftMargin:i * self.buttonWidth];
    }
}

- (void)setupBottomScrollView{
    
    self.bottomScrollView.backgroundColor = [UIColor whiteColor];
    self.bottomScrollView.showsHorizontalScrollIndicator = NO;
    self.bottomScrollView.pagingEnabled = YES;
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
