//
//  XCFCustomSearchBar.m
//  XCF
//
//  Created by  Mac on 16/5/10.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFCustomSearchBar.h"

@interface XCFCustomSearchBar()<UISearchBarDelegate>

@end

@implementation XCFCustomSearchBar

+ (instancetype)customSearchBarWithPlaceHolder:(NSString *)placeholder{
    
    XCFCustomSearchBar *searchBar = [[self alloc] init];
    searchBar.delegate = searchBar;
    searchBar.placeholder = placeholder;
    UITextField *searchFieldTextField = [searchBar valueForKey:@"_searchField"];
    searchFieldTextField.backgroundColor = ColorWithRGB(236, 236, 236);
    UIImageView *searchBarBackground = [searchBar valueForKey:@"_background"];
    [searchBarBackground removeFromSuperview];
    return searchBar;
    
}


#pragma mark - UISearchBarDelegate

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
    
    !self.searchBarDidBeginEditingBlock ? : self.searchBarDidBeginEditingBlock();
}





@end
