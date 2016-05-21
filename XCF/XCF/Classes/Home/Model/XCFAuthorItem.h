//
//  XCFAuthorItem.h
//  XCF
//
//  Created by  Mac on 16/5/21.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XCFAuthorItem : NSObject
/** 点击作者头像对应的url*/
@property (nonatomic, strong) NSString *url;
/** 作者头像*/
@property (nonatomic, strong) NSString *photo;
/** 作者ID*/
@property (nonatomic, strong) NSString *ID; //id
/** 作者名字*/
@property (nonatomic, strong) NSString *name;


@end
