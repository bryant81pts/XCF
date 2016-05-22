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
/*** 2 */
/** 二级标题*/
@property (nonatomic, strong) NSString *title_2nd;
/** 一级标题*/
@property (nonatomic, strong) NSString *title_1st;

/** 4*/
@property (nonatomic, strong) NSString *whisper;


/***1 2 4 5 6 */
/** 图片*/
@property (nonatomic, strong) XCFImageItem *image;

/*** 5*/
/** 做过的人数*/
@property (nonatomic, assign) NSInteger n_cooked;
/** ???*/
@property (nonatomic, assign) NSInteger n_dishes;
/** 得分*/
@property (nonatomic, strong) NSString *score;
/** 菜谱ID*/
@property (nonatomic, strong) NSString *recipe_id;
/** 视频url*/
@property (nonatomic, strong) NSString *video_url;
/** 作者*/
@property (nonatomic, strong) XCFAuthorItem *author;


/*** 1 5*/
/** 描述*/
@property (nonatomic, strong) NSString *desc;
/** 标题*/
@property (nonatomic, strong) NSString *title;


/*************************************** 高度***************************************************/

@property (nonatomic, assign) NSInteger cellTemplate;


@property (assign, nonatomic) CGFloat cellHeight;


/**********************************************************************************************/
/**
 
 1 -> image desc title
 2 -> title_2nd title_1st image
 4 -> whisper image
 5 -> videourl author image title n_cooked n_dishes score recipe_id desc
 6 -> image
 
 
 */
@end
