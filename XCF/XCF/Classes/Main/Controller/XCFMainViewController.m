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


+ (void)load{
    
    UITabBarItem *item = [UITabBarItem appearance];
    
    NSDictionary *normalAttrDict = @{
                                     
                                     NSForegroundColorAttributeName : [UIColor grayColor]
                                     };
    
    [item setTitleTextAttributes:normalAttrDict forState:UIControlStateNormal];
    
    NSDictionary *selectedAttrDict = @{
                                       
                                       NSForegroundColorAttributeName : ThemeColor
                                       
                                       };
    
    [item setTitleTextAttributes:selectedAttrDict forState:UIControlStateSelected];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.barTintColor = [UIColor whiteColor];
    
    //设置子控制器
    [self setupChildControllers];
    
    //设置TabBar上的按钮
    [self setupTabBarButtons];
    
}

#pragma mark - 设置子控制器
- (void)setupChildControllers{
    
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:[[XCFHomeViewController alloc] init]];
    [self addChildViewController:homeNav];
    
    UINavigationController *marketNav = [[UINavigationController alloc] initWithRootViewController:[[XCFMarketViewController alloc] init]];
    [self addChildViewController:marketNav];
    
    UINavigationController *communityNav = [[UINavigationController alloc] initWithRootViewController:[[XCFCommunityViewController alloc] init]];
    [self addChildViewController:communityNav];
    
    UINavigationController *profileNav = [[UINavigationController alloc] initWithRootViewController:[[XCFProfileViewController alloc] init]];
    [self addChildViewController:profileNav];
    
}

#pragma mark - 设置TabBar上的按钮
- (void)setupTabBarButtons{
    
    UINavigationController *homeNav = self.childViewControllers[0];
    homeNav.tabBarItem.title = @"下厨房";
    homeNav.tabBarItem.image = [UIImage originalImageWithImageName:@"tabADeselected_25x25_"];
    homeNav.tabBarItem.selectedImage = [UIImage originalImageWithImageName:@"tabASelected_25x25_"];
    
    UINavigationController *marketNav = self.childViewControllers[1];
    marketNav.tabBarItem.title = @"市集";
    marketNav.tabBarItem.image = [UIImage originalImageWithImageName:@"tabBDeselected_25x25_"];
    marketNav.tabBarItem.selectedImage = [UIImage originalImageWithImageName:@"tabBSelected_25x25_"];
    
    UINavigationController *communityNav = self.childViewControllers[2];
    communityNav.tabBarItem.title = @"社区";
    communityNav.tabBarItem.image = [UIImage originalImageWithImageName:@"tabCDeselected_25x25_"];
    communityNav.tabBarItem.selectedImage = [UIImage originalImageWithImageName:@"tabCSelected_25x25_"];
    
    UINavigationController *profileNav = self.childViewControllers[3];
    profileNav.tabBarItem.title = @"我";
    profileNav.tabBarItem.image = [UIImage originalImageWithImageName:@"tabDDeselected_25x25_"];
    profileNav.tabBarItem.selectedImage = [UIImage originalImageWithImageName:@"tabDSelected_25x25_"];
    
}

@end
