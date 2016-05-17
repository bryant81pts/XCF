//
//  XCFHomeViewController.m
//  XCF
//
//  Created by  Mac on 16/5/3.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFHomeViewController.h"
#import "XCFSearchController.h"
#import "XCFHeaderViewController.h"
#import "XCFSearchBar.h"
#import "XCFContentItem.h"
#import <AFNetworking/AFNetworking.h>
#import <MJExtension/MJExtension.h>

@interface XCFHomeViewController ()

@end

@implementation XCFHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ThemeColor;
    [self setupNavigationBar];
    [self setupTableHeaderView];
    [self loadData];
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
    
    XCFHeaderViewController *headerViewController = [[XCFHeaderViewController alloc] init];
    [self addChildViewController:headerViewController];
    headerViewController.view.bounds = CGRectMake(0, 0, ScreenWidth, XCFHomeHeaderHeight);
    self.tableView.tableHeaderView = headerViewController.view;
    
}

/** 请求数据*/
- (void) loadData{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:XCFHeaderViewRequestURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        XCFContentItem *item = [XCFContentItem mj_objectWithKeyValues:responseObject[@"content"]];
        XCFHeaderViewController *headerViewController = (XCFHeaderViewController *)self.childViewControllers[0];
        headerViewController.item = item;
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"%@",error);
    }];
    
    
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

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 0;
}




@end
