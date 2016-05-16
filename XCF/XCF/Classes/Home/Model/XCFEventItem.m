//
//  XCFEventItem.m
//  XCF
//
//  Created by  Mac on 16/5/16.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFEventItem.h"
#import <MJExtension/MJExtension.h>

@implementation XCFEventItem

+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    
    return @{
             
             @"ID" : @"id"
             
             };
}


@end