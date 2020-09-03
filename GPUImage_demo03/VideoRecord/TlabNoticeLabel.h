//
//  TlabNoticeLabel.h
//  GPUImage_demo03
//
//  Created by tlab on 2020/8/26.
//  Copyright © 2020 yuanfangzhuye. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TlabNoticeLabel : UIView

/**
*  功能：提示框
*  param
*  message: 要显示的文字信息
*  second:  显示文字的时间
*/

+ (instancetype)message:(NSString *)message delaySecond:(CGFloat)second;

@end

