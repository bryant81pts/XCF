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
#import "XCFCellContentItem.h"
#import "XCFCellIssuesItem.h"
#import <AFNetworking/AFNetworking.h>
#import <MJExtension/MJExtension.h>

@interface XCFHomeViewController ()

@property (nonatomic, strong) XCFCellContentItem *item;

@end

static NSString * const ID = @"ID";
@implementation XCFHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ThemeColor;
    [self setupNavigationBar];
    [self setupTableHeaderView];
    [self setupTableView];
    [self loadData];
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    self.tableView.tableHeaderView.xcf_height = XCFHomeHeaderHeight;
    
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
    self.tableView.tableHeaderView = headerViewController.view;

}

- (void)setupTableView{
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.showsVerticalScrollIndicator = NO;
    
}

/** 请求数据*/
- (void) loadData{
    //请求关于cell的数据
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:XCFTableViewRequestURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary *  _Nullable responseObject) {
        
        self.item = [XCFCellContentItem mj_objectWithKeyValues:responseObject[@"content"]];
        [self.tableView reloadData];
        
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
    
    return self.item.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.item.issues[section].items_count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.textLabel.text = @"哈哈";
    
    return cell;
    
}

@end
