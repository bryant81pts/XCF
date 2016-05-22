//
//  XCFTemplateFiveCell.m
//  XCF
//
//  Created by  Mac on 16/5/17.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFTemplateFiveCell.h"

#import "XCFCellIssuesContentsItem.h"
#import "XCFImageItem.h"
#import "XCFAuthorItem.h"
#import <UIImageView+WebCache.h>

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

@property (weak, nonatomic) IBOutlet UILabel *authorNameLabel;

@end

@implementation XCFTemplateFiveCell

- (void)setItem:(XCFCellIssuesContentsItem *)item{
    
    _item = item;
    self.title_Label.text = item.title;
    self.descriptionLabel.text = item.desc;
    
    NSString *cookedStr = [NSString stringWithFormat:@"%@分-%ld人做过", item.score, item.n_cooked];
    self.ratingLabel.text = cookedStr;
    self.authorNameLabel.text = item.author.name;
    [self.pictureImageView sd_setImageWithURL:[NSURL URLWithString:item.image.url]];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:item.author.photo]];
    
}

- (void)awakeFromNib {

    self.pictureImageView.clipsToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
