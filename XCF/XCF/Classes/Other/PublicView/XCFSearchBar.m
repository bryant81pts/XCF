//
//  XCFSearchBar.m
//  XCF
//
//  Created by daalphahwz on 16/5/10.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFSearchBar.h"
#import "XCFHomeViewController.h"

@interface XCFSearchBar()<UISearchBarDelegate>

@end

@implementation XCFSearchBar

+ (instancetype)searchBarWithPlaceholder:(NSString *)placeholder{
    
    XCFSearchBar *searchBar = [[self alloc] init];
    searchBar.placeholder = placeholder;
    searchBar.delegate = searchBar;
    [searchBar setImage:[UIImage imageNamed:@"searchIcon_22x22_"] forSearchBarIcon:UISearchBarIconSearch state:UIControlStateNormal];
    UITextField *searchFieldTextField = [searchBar valueForKey:@"_searchField"];
    searchFieldTextField.tintColor = [UIColor lightGrayColor];
    searchFieldTextField.backgroundColor = ColorWithRGB(245, 242, 242);
    UIImageView *searchBarBackground = [searchBar valueForKey:@"_background"];
    [searchBarBackground removeFromSuperview];
    return searchBar;
}

@end
