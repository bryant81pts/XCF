//
//  XCFProfileViewController.m
//  XCF
//
//  Created by  Mac on 16/5/3.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFProfileViewController.h"

@interface XCFProfileViewController ()

@end

@implementation XCFProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RandomColor;
    
    //设置导航栏
    [self setupNavigationBar];
    
}

#pragma mark - 设置导航栏
- (void)setupNavigationBar{
    
    self.navigationItem.title = @"我";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[UIView navigationBarButtonViewWithImage:[UIImage imageNamed:@"navFindFriendsImage_22x22_"] taget:self action:@selector(findFriendButtonClick)]];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[UIView navigationBarButtonViewWithImage:[UIImage imageNamed:@"rightPageSetting_22x22_"] taget:self action:@selector(settingButtonClick)]];
    
    
}

- (void)settingButtonClick{
    
    XCFFunc;
    
}


- (void)findFriendButtonClick{
    
    XCFFunc;
    
}

@end
