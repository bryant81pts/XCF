//
//  XCFTemplateSixCell.m
//  XCF
//
//  Created by  Mac on 16/5/22.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFTemplateSixCell.h"

#import "XCFCellIssuesContentsItem.h"
#import "XCFImageItem.h"
#import <UIImageView+WebCache.h>

@interface XCFTemplateSixCell()

@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;

@end

@implementation XCFTemplateSixCell

- (void)setItem:(XCFCellIssuesContentsItem *)item{
    
    _item = item;
    
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
