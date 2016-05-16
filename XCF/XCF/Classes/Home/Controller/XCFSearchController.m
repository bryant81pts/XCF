//
//  XCFSearchController.m
//  XCF
//
//  Created by daalphahwz on 16/5/10.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFSearchController.h"
#import "XCFSearchBar.h"

@interface XCFSearchController ()

@property (nonatomic,weak)XCFSearchBar *searchBar;

@end

@implementation XCFSearchController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = RandomColor;
    
    [self setupNavBar];
    
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    /** 延迟弹出键盘*/
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self.searchBar becomeFirstResponder];
    });
    
}

- (void)setupNavBar{
    
    self.navigationItem.leftBarButtonItem = nil;
    self.navigationItem.hidesBackButton = YES;
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem customItemWithTitle:@"取消"
                                                                            color:ThemeRed
                                                                            taget:self
                                                                           action:@selector(cancelButtonClick)];
    XCFSearchBar *searchBar = [XCFSearchBar searchBarWithPlaceholder:@"菜谱、食材"];
    self.navigationItem.titleView = searchBar;
    self.searchBar = searchBar;
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    
    [self.searchBar resignFirstResponder];
}

- (void)cancelButtonClick {
    
    [self.searchBar resignFirstResponder];
    [self.navigationController popViewControllerAnimated:YES];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 0;
}


@end
