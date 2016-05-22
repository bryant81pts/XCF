//
//  XCFTemplateOneCell.m
//  XCF
//
//  Created by  Mac on 16/5/17.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFTemplateOneCell.h"
#import "XCFCellIssuesContentsItem.h"
#import "XCFImageItem.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface XCFTemplateOneCell()

/** 图片*/
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;
/** 标题*/
@property (weak, nonatomic) IBOutlet UILabel *title_Label;
/** 描述*/
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@end

@implementation XCFTemplateOneCell

- (void)setItem:(XCFCellIssuesContentsItem *)item{
    
    _item = item;
    
    self.title_Label.text = item.title;
    self.descriptionLabel.text = item.desc;
    [self.pictureImageView sd_setImageWithURL:[NSURL URLWithString:item.image.url]];
}

- (void)awakeFromNib {
    self.pictureImageView.clipsToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
