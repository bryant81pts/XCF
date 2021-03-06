//
//  UIImage+Extension.h
//  XCF
//
//  Created by daalphahwz on 16/5/10.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

+ (UIImage *)originalImageWithImageName:(NSString *)imageName;

+ (UIImage *)roundImageWithOriginalImage:(UIImage *)image;

@end
