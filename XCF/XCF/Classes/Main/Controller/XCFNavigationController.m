//
//  XCFNavigationController.m
//  XCF
//
//  Created by  Mac on 16/5/6.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFNavigationController.h"

@interface XCFNavigationController ()

@end

@implementation XCFNavigationController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.barTintColor = [UIColor whiteColor];
    for (UIImageView *imageView in self.navigationBar.subviews) {
    
        if ([imageView isKindOfClass:NSClassFromString(@"_UINavigationBarBackground")]) {
            
            for (UIImageView *bottomLineImageView in imageView.subviews) {
             
                [bottomLineImageView removeFromSuperview];
                
            }
        }
    }
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    

    if (self.childViewControllers.count != 0) {
        
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem customItemWithImage:[UIImage imageNamed:@"backStretchBackgroundNormal_22x22_"] taget:self action:@selector(backButtonClick)];
    }
    
    [super pushViewController:viewController animated:animated];
    
    
}

- (void)backButtonClick{
    
    [self popViewControllerAnimated:YES];
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.childViewControllers.count != 0) {
        
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem customItemWithImage:[UIImage imageNamed:@"backStretchBackgroundNormal_22x22_"]
                                                                                         taget:self
                                                                                        action:@selector(backButtonClick)];
    
    }
    
    [super pushViewController:viewController animated:animated];
}


- (void)backButtonClick{
    
    [self popViewControllerAnimated:YES];
    
}

@end
