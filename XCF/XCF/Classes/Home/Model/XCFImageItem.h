//
//  XCFImageItem.h
//  XCF
//
//  Created by  Mac on 16/5/21.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XCFImageItem : NSObject
/** 图片对应的url*/
@property (nonatomic, strong) NSString *url;
/** 图片宽度*/
@property (nonatomic, assign) NSInteger width;
/** 图片高度*/
@property (nonatomic, assign) NSInteger height;

@end
