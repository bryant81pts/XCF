//
//  XCFTemplateTwoCell.m
//  XCF
//
//  Created by  Mac on 16/5/17.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFTemplateTwoCell.h"

#import "XCFCellIssuesContentsItem.h"
#import "XCFImageItem.h"
#import <UIImageView+WebCache.h>

@interface XCFTemplateTwoCell()
/** 图片*/
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;
/** 标题*/
@property (weak, nonatomic) IBOutlet UILabel *title_Label;
/** 描述*/
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end

@implementation XCFTemplateTwoCell

- (void)setItem:(XCFCellIssuesContentsItem *)item{
    
    _item = item;
    
    self.title_Label.text = item.title_1st;
    self.descriptionLabel.text = item.title_2nd;
    [self.pictureImageView sd_setImageWithURL:[NSURL URLWithString:item.image.url]];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
