//
//  XCFCellIssuesContentsItem.h
//  XCF
//
//  Created by  Mac on 16/5/21.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XCFAuthorItem;
@class XCFImageItem;
@interface XCFCellIssuesContentsItem : NSObject
/** 二级标题*/
@property (nonatomic, strong) NSString *title_2nd;
/** 一级标题*/
@property (nonatomic, strong) NSString *title_1st;
/** 视频url*/
@property (nonatomic, strong) NSString *video_url;
/** t4特有*/
@property (nonatomic, strong) NSString *whisper;
/** 作者*/
@property (nonatomic, strong) XCFAuthorItem *author;
/** 图片*/
@property (nonatomic, strong) XCFImageItem *image;
/** 标题*/
@property (nonatomic, strong) NSString *title;
/** 做过的人数*/
@property (nonatomic, assign) NSInteger n_cooked;
/** ???*/
@property (nonatomic, assign) NSInteger n_dishes;
/** 得分*/
@property (nonatomic, strong) NSString *score;
/** 菜谱ID*/
@property (nonatomic, strong) NSString *recipe_id;
/** 描述*/
@property (nonatomic, strong) NSString *desc;

@end
