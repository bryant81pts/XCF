//
//  XCFCellItem.m
//  XCF
//
//  Created by  Mac on 16/5/21.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFCellItem.h"
#import <MJExtension.h>
#import "XCFCellIssuesContentsItem.h"
@implementation XCFCellItem

+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    
    return @{
             
             @"cellTemplate" : @"template",
             @"ID" : @"id"
             
             };
}

- (void)setContents:(XCFCellIssuesContentsItem *)contents{
    
    _contents = contents;
    
    //NSLog(@"%ld",_cellTemplate);
    
    contents.cellTemplate = _cellTemplate;
}





@end
