//
//  XCFCellContentItem.m
//  XCF
//
//  Created by  Mac on 16/5/21.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFCellContentItem.h"
#import <MJExtension.h>


@implementation XCFCellContentItem


+(NSDictionary *)mj_objectClassInArray{
    
    return @{
             
             @"issues" : @"XCFCellIssuesItem"
             
             };
    
}

@end
