//
//  XCFImageItem.h
//  XCF
//
//  Created by  Mac on 16/5/21.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XCFImageItem : NSObject
/** 点击图片对应的url*/
@property (nonatomic, strong) NSString *url;
/** 图片宽度*/
@property (nonatomic, strong) NSString *width;
/** 图片高度*/
@property (nonatomic, strong) NSString *height;

@end
