//
//  XCFMarketViewController.m
//  XCF
//
//  Created by  Mac on 16/5/3.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFMarketViewController.h"

@interface XCFMarketViewController ()

@end

@implementation XCFMarketViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RandomColor;
    
    
    //设置导航栏
    [self setupNavigationBar];
    
}

#pragma mark - 设置导航栏
- (void)setupNavigationBar{
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem customItemWithImage:[UIImage imageNamed:@"leftPageButtonBackgroundNormal_22x22_"] taget:self action:@selector(marketCategoryButtonClick)];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem customItemWithImage:[UIImage imageNamed:@"shoppingCart_22x22_"] taget:self action:@selector(shoppingCartButtonClick)];
    
    UISearchBar *searchBar = [[UISearchBar alloc] init];
    searchBar.placeholder = @"搜索商品";
    searchBar.barTintColor = [UIColor redColor];
    self.navigationItem.titleView = searchBar;
    
}


- (void)marketCategoryButtonClick{
    
    XCFFunc;
    
}

- (void)shoppingCartButtonClick{

    XCFFunc;
    
}






@end
