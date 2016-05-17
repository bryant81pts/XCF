//
//  XCFTemplateFiveCell.m
//  XCF
//
//  Created by  Mac on 16/5/17.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFTemplateFiveCell.h"

@interface XCFTemplateFiveCell()

/** 图片*/
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;
/** 作者头像*/
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
/** 标题*/
@property (weak, nonatomic) IBOutlet UILabel *title_Label;
/** 描述*/
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
/** 评分*/
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;

@end

@implementation XCFTemplateFiveCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
