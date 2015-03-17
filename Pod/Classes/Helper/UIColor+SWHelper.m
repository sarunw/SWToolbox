//
//  UIColor+SWHelper.m
//  Pods
//
//  Created by Sarun Wongpatcharapakorn on 3/17/15.
//
//

#import "UIColor+SWHelper.h"

@implementation UIColor (SWHelper)

+ (UIColor *)colorWithDecimalRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:red/255 green:green/255 blue:blue/255 alpha:alpha];
}

@end
