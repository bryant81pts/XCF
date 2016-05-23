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
#import "XCFTemplateOneCell.h"
#import "XCFTemplateTwoCell.h"
#import "XCFTemplateFourCell.h"
#import "XCFTemplateFiveCell.h"
#import "XCFTemplateSixCell.h"
#import "XCFSectionHeader.h"
#import "XCFCellContentItem.h"
#import "XCFCellIssuesItem.h"
#import "XCFCellIssuesContentsItem.h"
#import "XCFCellItem.h"
#import <AFNetworking/AFNetworking.h>
#import <MJExtension/MJExtension.h>
#import <MJRefresh/MJRefresh.h>

static NSString * const templateOne = @"templateOne";
static NSString * const templateTwo = @"templateTwo";
static NSString * const templateFour = @"templateFour";
static NSString * const templateFive = @"templateFive";
static NSString * const templateSix = @"templateSix";
static NSString * const sectionHeader = @"sectionHeaderID";
@interface XCFHomeViewController ()

@property (nonatomic, strong) XCFCellContentItem *item;

@property (nonatomic, strong) NSMutableArray *cellIssuesItemsArray;

@property (nonatomic, strong) AFHTTPSessionManager *manager;

@end

@implementation XCFHomeViewController

- (NSMutableArray *)cellIssuesItemsArray{
    
    if (_cellIssuesItemsArray == nil) {
        
        _cellIssuesItemsArray = [NSMutableArray array];
    }
    return _cellIssuesItemsArray;
}

- (AFHTTPSessionManager *)manager{
    
    if (_manager == nil) {
        _manager = [AFHTTPSessionManager manager];
    }
    return _manager;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ThemeColor;
    [self setupNavigationBar];
    [self setupTableHeaderView];
    [self setupTableView];
    [self setupRefresh];
    [self loadData];
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    self.tableView.tableHeaderView.xcf_height = XCFHomeHeaderHeight;
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
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
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([XCFTemplateOneCell class]) bundle:nil] forCellReuseIdentifier:templateOne];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([XCFTemplateTwoCell class]) bundle:nil] forCellReuseIdentifier:templateTwo];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([XCFTemplateFourCell class]) bundle:nil] forCellReuseIdentifier:templateFour];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([XCFTemplateFiveCell class]) bundle:nil] forCellReuseIdentifier:templateFive];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([XCFTemplateSixCell class]) bundle:nil] forCellReuseIdentifier:templateSix];
    [self.tableView registerClass:[XCFSectionHeader class] forHeaderFooterViewReuseIdentifier:sectionHeader];
    
}

- (void)setupRefresh{
    
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
    [self.tableView.mj_header beginRefreshing];
    self.tableView.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreData)];
    self.tableView.mj_footer.hidden = YES;
}

- (void) loadData{
    
    [self.manager GET:XCFTableViewRequestURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary *  _Nullable responseObject) {
        
        self.item = [XCFCellContentItem mj_objectWithKeyValues:responseObject[@"content"]];
        self.cellIssuesItemsArray = self.item.issues;
        [self.tableView.mj_header endRefreshing];
        self.tableView.mj_footer.hidden = NO;
        [self.tableView reloadData];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [self.tableView.mj_header endRefreshing];
        NSLog(@"%@",error);
    }];
}

- (void) loadMoreData{
    
    [self.manager GET:XCFTableViewRequestURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary *  _Nullable responseObject) {
        NSArray *temArray = [XCFCellIssuesItem mj_objectArrayWithKeyValuesArray:responseObject[@"content"][@"issues"]];
        [self.cellIssuesItemsArray addObjectsFromArray:temArray];
        [self.tableView.mj_footer endRefreshing];
        [self.tableView reloadData];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
        [self.tableView.mj_footer endRefreshing];
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
    
    return self.cellIssuesItemsArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.cellIssuesItemsArray[section] items_count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    XCFCellIssuesItem *issuesItem = self.cellIssuesItemsArray[indexPath.section];
    XCFCellItem *item = issuesItem.items[indexPath.row];
    NSInteger template = item.cellTemplate;
    switch (template) {
        case 1:{
           XCFTemplateOneCell *cell = [tableView dequeueReusableCellWithIdentifier:templateOne];
           cell.item = item.contents;
            return cell;
        }
        case 2:{
            XCFTemplateTwoCell *cell = [tableView dequeueReusableCellWithIdentifier:templateTwo];
            cell.item = item.contents;
            return cell;
        }
        case 4:{
            XCFTemplateFourCell *cell = [tableView dequeueReusableCellWithIdentifier:templateFour];
            cell.item = item.contents;
            return cell;
            
        }
        case 5:{
            XCFTemplateFiveCell *cell = [tableView dequeueReusableCellWithIdentifier:templateFive];
            cell.item = item.contents;
            return cell;
        }
        default:{
            
            XCFTemplateSixCell *cell = [tableView dequeueReusableCellWithIdentifier:templateSix];
            cell.item = item.contents;
            return cell;
        }
        
    }
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    XCFCellIssuesItem *issuesItem = self.item.issues[section];
    XCFSectionHeader *header = [tableView dequeueReusableHeaderFooterViewWithIdentifier:sectionHeader];
    header.title = issuesItem.title;

    return header;

}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return XCFSectionHeaderHeight;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 300.0;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    XCFCellItem *item = self.item.issues[indexPath.section].items[indexPath.row];
    XCFCellIssuesContentsItem *contentsItem = item.contents;
    
    return contentsItem.cellHeight;
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    (scrollView.contentOffset.y >= self.tableView.tableHeaderView.xcf_height - 64.0) ? (scrollView.contentInset = UIEdgeInsetsMake(0, 0, 49, 0)) : (scrollView.contentInset = UIEdgeInsetsMake(64, 0, 49, 0));
    
}


@end
