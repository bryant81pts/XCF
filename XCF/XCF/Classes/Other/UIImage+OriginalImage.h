//
//  UIImage+OriginalImage.h
//  XCF
//
//  Created by daalphahwz on 16/5/3.
//  Copyright © 2016年 dalpha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (OriginalImage)

/**
 *  返回一个没有渲染过的图片
 *
 *  @param imageName 需要处理的图片名称
 *
 *  @return 没有渲染过的图片
 */
+ (UIImage *)originalImageWithImageName:(NSString *)imageName;

@end
