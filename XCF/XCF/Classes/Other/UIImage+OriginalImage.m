//
//  UIImage+OriginalImage.m
//  XCF
//
//  Created by daalphahwz on 16/5/3.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import "UIImage+OriginalImage.h"

@implementation UIImage (OriginalImage)

+(UIImage *)originalImageWithImageName:(NSString *)imageName{
    
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
}


@end
