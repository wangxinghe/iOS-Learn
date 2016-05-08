//
//  MXJCommonUtil.m
//  iOSLearn
//
//  Created by wangxinghe on 7/5/2016.
//  Copyright © 2016 mouxuejie.com. All rights reserved.
//

#import "MXJCommonUtil.h"

@implementation MXJCommonUtil

+ (UIImage *)imageWithColor:(UIColor *)color {
    return [MXJCommonUtil imageWithColor:color size:CGSizeMake(1.0, 1.0)];
}

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
