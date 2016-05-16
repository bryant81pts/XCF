//
//  XCFPopularEventView.m
//  XCF
//
//  Created by  Mac on 16/5/16.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFPopularEventView.h"
#import "XCFEventItem.h"
#import "XCFDishesItem.h"
#import <UIImageView+WebCache.h>

@interface XCFPopularEventView()

/** 背景图片*/
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
/** 作品类型(早餐\午餐\晚餐)Label*/
@property (weak, nonatomic) IBOutlet UILabel *recipeTypeLabel;
/** 作品数量*/
@property (weak, nonatomic) IBOutlet UILabel *recipeCountLabel;
/** 作品图片*/
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;

@end

@implementation XCFPopularEventView

- (void)setItem:(XCFEventItem *)item{
    _item = item;
    
    NSString *typeStr = [item.name substringToIndex:2];
    self.recipeTypeLabel.text = [NSString stringWithFormat:@"- %@ -", typeStr];
    self.recipeCountLabel.text = [NSString stringWithFormat:@"%ld作品", item.n_dishes];
    XCFDishesItem *dishesItem = item.dishes;
    NSURL *picURL = [NSURL URLWithString:dishesItem.dishes[0][@"thumbnail_280"]];
    [self.recipeImageView sd_setImageWithURL:picURL];
    
    if ([typeStr isEqualToString:@"早餐"]) {
        
        self.backgroundImageView.image = [UIImage imageNamed:@"themeSmallPicForBreakfast_320x70_"];
        
    }else if ([typeStr isEqualToString:@"午餐"]){
        
        self.backgroundImageView.image = [UIImage imageNamed:@"themeSmallPicForLaunch_320x70_"];
        
    }else if ([typeStr isEqualToString:@"晚餐"]){
        
        self.backgroundImageView.image = [UIImage imageNamed:@"themeSmallPicForSupper_320x70_"];
        
    }else{
        
        self.backgroundImageView.image = [UIImage imageNamed:@"themeSmallPicForOthers_320x70_"];
    }

    
}

+ (instancetype)popularEventView{
    
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class])
                                          owner:nil
                                        options:nil]firstObject];
}

@end
