//
//  TlabNoticeLabel.m
//  GPUImage_demo03
//
//  Created by tlab on 2020/8/26.
//  Copyright © 2020 yuanfangzhuye. All rights reserved.
//

#import "TlabNoticeLabel.h"

#define kScreenWidth  [UIScreen mainScreen].bounds.size.width
#define kScreenHeight  [UIScreen mainScreen].bounds.size.height

@implementation TlabNoticeLabel

+ (instancetype)message:(NSString *)message delaySecond:(CGFloat)second {
    
    TlabNoticeLabel *labelView = nil;
    if (labelView == nil) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
        label.backgroundColor = [UIColor clearColor];
        label.text = message;
        // 文字颜色，字体，对其方式等，修改可在下列属性中修改
        label.textColor = [UIColor whiteColor];
        label.font = [UIFont systemFontOfSize:14];
        label.numberOfLines = 0;
        label.textAlignment = NSTextAlignmentCenter;
        
        CGFloat textWidth = [label.text boundingRectWithSize:CGSizeMake(kScreenWidth/4*3-20, 33) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:label.font} context:nil].size.width;
        CGFloat textHeight = [label.text boundingRectWithSize:CGSizeMake(textWidth, FLT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:label.font} context:nil].size.height;
        
        [label setFrame:CGRectMake(10, 10, textWidth, textHeight)];
        
        labelView = [[TlabNoticeLabel alloc] initWithFrame:CGRectMake(kScreenWidth/2-textWidth/2, kScreenHeight/2-textHeight/2+10, textWidth+20, textHeight+20)];
        [labelView addSubview:label];
        labelView.backgroundColor = [UIColor blackColor];
        labelView.alpha = 0.7;
        labelView.layer.cornerRadius = 8;
        labelView.clipsToBounds = YES;
    }
    
    [labelView removeFromItsSuperView:labelView second:2.0];
    
    return labelView;
}

- (void)removeFromItsSuperView:(TlabNoticeLabel *)labelView second:(CGFloat)second {
    
    __weak typeof(labelView) weakSelf = labelView;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(second * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf removeFromSuperview];
    });
}

@end
