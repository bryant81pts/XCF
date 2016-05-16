//
//  XCFPopularEventsItem.m
//  XCF
//
//  Created by  Mac on 16/5/16.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFPopularEventsItem.h"
#import <MJExtension/MJExtension.h>

@implementation XCFPopularEventsItem

+ (NSDictionary *)mj_objectClassInArray{
    
    return @{
             @"events" : @"XCFEventItem"
             };
}


@end
