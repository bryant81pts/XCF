//
//  XCFNavButtonItem.h
//  XCF
//
//  Created by daalphahwz on 16/5/12.
//  Copyright © 2016年 dalpha. All rights reserved.
//

/** NavButton的模型*/
#import <Foundation/Foundation.h>

@interface XCFNavButtonItem : NSObject

/** 导航按钮对应的URL*/
@property (nonatomic, strong) NSString *url;
/** 导航按钮的title*/
@property (nonatomic, strong) NSString *name;
/** 导航按钮的图片*/
@property (nonatomic, strong) NSString *picurl;

@end
