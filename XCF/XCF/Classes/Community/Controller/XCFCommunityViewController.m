//
//  XCFCommunityViewController.m
//  XCF
//
//  Created by  Mac on 16/5/3.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFCommunityViewController.h"

@interface XCFCommunityViewController ()

@end

@implementation XCFCommunityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RandomColor;
    
    //设置导航栏
    [self setupNavigationBar];
    
}

#pragma mark - 设置导航栏
- (void)setupNavigationBar{
    
    
    self.navigationItem.title = @"社区";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[UIView navigationBarButtonViewWithImage:[UIImage imageNamed:@"notification_22x22_"] taget:self action:@selector(notificationButtonClick)]];
    
    
}

- (void)notificationButtonClick{
    
    XCFFunc;
    
}

@end
