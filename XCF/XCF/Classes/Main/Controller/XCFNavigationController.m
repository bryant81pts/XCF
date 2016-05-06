//
//  XCFNavigationController.m
//  XCF
//
//  Created by  Mac on 16/5/6.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "XCFNavigationController.h"

@interface XCFNavigationController ()

@property (nonatomic, strong)UIImageView *navBarHairlineImageView;

@end

@implementation XCFNavigationController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.barTintColor = [UIColor whiteColor];
    
    //移除NavigtionBar的bottomline
    for (UIImageView *imageView in self.navigationBar.subviews) {
    
        if ([imageView isKindOfClass:NSClassFromString(@"_UINavigationBarBackground")]) {
            
            for (UIImageView *bottomLineImageView in imageView.subviews) {
             
                [bottomLineImageView removeFromSuperview];
                
            }
        }
    }
    
}


@end
