//
//  XCFTemplateFourCell.m
//  XCF
//
//  Created by  Mac on 16/5/17.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFTemplateFourCell.h"

#import "XCFCellIssuesContentsItem.h"
#import "XCFImageItem.h"
#import <UIImageView+WebCache.h>

@interface XCFTemplateFourCell()
/** 标题*/
@property (weak, nonatomic) IBOutlet UILabel *whisperLabel;

/** 图片*/
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;

@end

@implementation XCFTemplateFourCell

- (void)setItem:(XCFCellIssuesContentsItem *)item{
    
    _item = item;
    
    self.whisperLabel.text = item.whisper;
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
