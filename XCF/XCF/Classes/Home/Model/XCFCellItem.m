//
//  XCFCellItem.m
//  XCF
//
//  Created by  Mac on 16/5/21.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFCellItem.h"
#import <MJExtension.h>
@implementation XCFCellItem

+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    
    return @{
             
             @"template" : @"_template",
             @"id" : @"ID"
             
             };
}


@end
