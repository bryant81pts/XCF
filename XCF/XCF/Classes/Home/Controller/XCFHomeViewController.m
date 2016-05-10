//
//  XCFHomeViewController.m
//  XCF
//
//  Created by  Mac on 16/5/3.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFHomeViewController.h"
#import "XCFCustomSearchBar.h"
#import "XCFSearchController.h"

@interface XCFHomeViewController ()

@end

@implementation XCFHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = RandomColor;
    
    //设置导航栏
    [self setupNavigationBar];
}

#pragma mark - 设置导航栏
- (void)setupNavigationBar{
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem customItemWithImage:[UIImage imageNamed:@"homepageCreateRecipeButton_22x22_"] taget:self action:@selector(createRecipeButtonClick)];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem customItemWithImage:[UIImage imageNamed:@"buylistButtonImage_22x22_"] taget:self action:@selector(buyListButtonClick)];
    
    XCFCustomSearchBar *searchBar = [XCFCustomSearchBar customSearchBarWithPlaceHolder:@"菜谱、食材"];
    XCFSearchController *searchController = [[XCFSearchController alloc] init];
    searchBar.searchBarDidBeginEditingBlock = ^{
    
        [self.navigationController pushViewController:searchController animated:YES];
    };
    
    self.navigationItem.titleView = searchBar;

    
}

#pragma mark - createRecipeButtonClick
- (void) createRecipeButtonClick{
    

    XCFFunc;
    
}

#pragma mark - buyListButtonClick
- (void)buyListButtonClick {
    
    XCFFunc;
    
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

@end
