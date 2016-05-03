//
//  XCFMainViewController.m
//  XCF
//
//  Created by  Mac on 16/5/3.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFMainViewController.h"
#import "XCFHomeViewController.h"
#import "XCFMarketViewController.h"
#import "XCFCommunityViewController.h"
#import "XCFProfileViewController.h"

@interface XCFMainViewController ()

@end

@implementation XCFMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //添加子控制器
    [self setupChildControllers];
    
}

#pragma mark - setupChildControllers
- (void)setupChildControllers{
    
    XCFHomeViewController *homeViewController = [[XCFHomeViewController alloc] init];
    homeViewController.view.backgroundColor = RandomColor;
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeViewController];
    [self addChildViewController:homeNav];
    
    XCFMarketViewController *marketViewController = [[XCFMarketViewController alloc] init];
    marketViewController.view.backgroundColor = RandomColor;
    marketViewController.title = @"市集";
    UINavigationController *marketNav = [[UINavigationController alloc] initWithRootViewController:marketViewController];
    [self addChildViewController:marketNav];
    
    XCFCommunityViewController *communityViewController = [[XCFCommunityViewController alloc] init];
    communityViewController.view.backgroundColor = RandomColor;
    communityViewController.title = @"社区";
    UINavigationController *communityNav = [[UINavigationController alloc] initWithRootViewController:communityViewController];
    [self addChildViewController:communityNav];
    
    XCFProfileViewController *profileViewController = [[XCFProfileViewController alloc] init];
    profileViewController.view.backgroundColor = RandomColor;
    profileViewController.title = @"我";
    UINavigationController *profileNav = [[UINavigationController alloc] initWithRootViewController:profileViewController];
    [self addChildViewController:profileNav];
    
}

@end
