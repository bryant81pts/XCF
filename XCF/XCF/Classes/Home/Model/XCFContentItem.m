//
//  XCFContentItem.m
//  XCF
//
//  Created by  Mac on 16/5/16.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFContentItem.h"
#import <MJExtension/MJExtension.h>

@implementation XCFContentItem

+ (NSDictionary *)mj_objectClassInArray{
    
    return @{
             @"navs" : @"XCFNavButtonItem"
             };
}

@end
