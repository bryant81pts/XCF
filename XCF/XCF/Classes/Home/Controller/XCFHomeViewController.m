//
//  XCFHomeViewController.m
//  XCF
//
//  Created by  Mac on 16/5/3.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFHomeViewController.h"
#import "XCFSearchBar.h"
#import "XCFSearchController.h"
#import "XCFHomeHeaderView.h"
#import <AFNetworking/AFNetworking.h>

@interface XCFHomeViewController ()

@end

@implementation XCFHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ThemeColor;
    
    [self setupNavigationBar];
    [self setupTableHeaderView];
    
    
    [self loadNewData];
    

}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    /** 添加占位视图接收searchBar的点击手势*/
    [self addPlaceholderView];
    
}

- (void)addPlaceholderView{
    
    UIView *placeholderView = [[UIView alloc] init];
    placeholderView.backgroundColor = [UIColor clearColor];
    placeholderView.bounds = self.navigationItem.titleView.bounds;
    placeholderView.center = CGPointMake(self.navigationItem.titleView.xcf_width * 0.5, self.navigationItem.titleView.xcf_height * 0.5);
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapPlaceholderView)];
    [placeholderView addGestureRecognizer:tapGesture];
    [self.navigationItem.titleView addSubview:placeholderView];
    
}

#pragma mark - 设置导航栏
- (void)setupNavigationBar{
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem customItemWithImage:[UIImage imageNamed:@"homepageCreateRecipeButton_22x22_"]
                                                                           taget:self
                                                                          action:@selector(createRecipeButtonClick)];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem customItemWithImage:[UIImage imageNamed:@"buylistButtonImage_22x22_"]
                                                                            taget:self
                                                                           action:@selector(buyListButtonClick)];
    
    XCFSearchBar *searchBar = [XCFSearchBar searchBarWithPlaceholder:@"菜谱、食材"];
    self.navigationItem.titleView = searchBar;

}

- (void)setupTableHeaderView{
    
    XCFHomeHeaderView *headerView = [XCFHomeHeaderView homeHeaderView];
    headerView.backgroundColor = [UIColor whiteColor];
    headerView.bounds = CGRectMake(0, 0, ScreenWidth, XCFHomeHeaderHeight);
    self.tableView.tableHeaderView = headerView;
}

- (void) loadNewData{
    
    
}

#pragma mark - tapPlaceholderView
- (void)tapPlaceholderView {
    
    XCFSearchController *searchController = [[XCFSearchController alloc] init];
    [self.navigationController pushViewController:searchController animated:YES];
    
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
