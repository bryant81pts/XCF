//
//  XCFCustomSearchBar.h
//  XCF
//
//  Created by  Mac on 16/5/10.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XCFCustomSearchBar : UISearchBar

@property (nonatomic, copy) void (^searchBarDidBeginEditingBlock)();


+ (instancetype)customSearchBarWithPlaceHolder:(NSString *)placeholder;

@end
