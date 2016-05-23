//
//  XCFCellIssuesContentsItem.m
//  XCF
//
//  Created by  Mac on 16/5/21.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFCellIssuesContentsItem.h"
#import "XCFImageItem.h"
#import "XCFAuthorItem.h"

@implementation XCFCellIssuesContentsItem

- (CGFloat)cellHeight{
    
    if (_cellHeight) return _cellHeight;
    
    _cellHeight = 0;
    
    switch (self.cellTemplate) {
        case 1:{
            
            _cellHeight += ScreenWidth * 0.5 ;
            _cellHeight += XCFMargin;
            CGSize titleMaxSize = CGSizeMake(ScreenWidth - 2 * XCFMargin, MAXFLOAT);
            _cellHeight += [self.title boundingRectWithSize:titleMaxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:16.0]} context:nil].size.height + XCFMargin;
            _cellHeight += [self.desc boundingRectWithSize:titleMaxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14.0]} context:nil].size.height + XCFMargin;
            
            break;
        }
        case 2:{
            
            _cellHeight += ScreenWidth * 0.6;
            
            break;
        }
        case 4:{
            
            _cellHeight += ScreenWidth;
            
            break;
        }
        case 5:{
            
            _cellHeight += ScreenWidth * 0.5;
            _cellHeight += XCFMargin;
            CGSize titleMaxSize = CGSizeMake(ScreenWidth - 3 * XCFMargin - XCFAuthorIconWH, MAXFLOAT);
            _cellHeight += [self.title boundingRectWithSize:titleMaxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:17.0]} context:nil].size.height + XCFMargin;
            _cellHeight += [self.desc boundingRectWithSize:titleMaxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:13.0]} context:nil].size.height + XCFMargin;
            NSString *cookedStr = [NSString stringWithFormat:@"%@-%ld",self.score, self.n_cooked];
            _cellHeight += [cookedStr boundingRectWithSize:titleMaxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:12.0]} context:nil].size.height + XCFMargin;
            
            break;
        }
        case 6:{
            
            self.image.height > ScreenHeight ? (_cellHeight += ScreenHeight * 0.8) : (_cellHeight += self.image.width / ScreenWidth * self.image.height);
            
            break;
        }
            
        default:
            break;
    }
    
    return _cellHeight;
}

@end
