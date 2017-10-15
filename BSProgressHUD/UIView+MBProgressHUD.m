//
//  UIView+BSProgressHUD.m
//  TestHud
//
//  Created by 王通 on 2017/4/12.
//  Copyright © 2017年 王通. All rights reserved.
//

#import "UIView+MBProgressHUD.h"
//
#import "BSProgressHUD.h"

CGFloat const BSMBHUD_TextShowHideTime = 1.5;

@implementation UIView (MBProgressHUD)

#pragma mark - hud 文字提示
- (void)showMBHUDText:(NSString *)hudText {
    [self hideHUDLoadingView];
    //
    BSProgressHUD *hud = [BSProgressHUD showHUDAddedTo:self animated:YES];
    hud.mode = BSProgressHUDModeText;
    hud.detailsLabelFont = [UIFont systemFontOfSize:16];
    hud.margin = 10.0f;//提示文字外边距
    hud.cornerRadius = 3;//圆角大小
    NSString *strMsg = @"暂无信息";
    if (hudText) {
        strMsg = hudText;
    }
    hud.detailsLabelText = strMsg;
    //
    [hud hide:YES afterDelay:BSMBHUD_TextShowHideTime];
}

#pragma mark - hud 加载视图
- (void)showMBHUDLoadingView:(NSString *)hudText
{
    BSProgressHUD *hud = [BSProgressHUD showHUDAddedTo:self animated:YES];
    hud.labelFont = [UIFont systemFontOfSize:16];
    if (hudText) {
        hud.labelText = hudText;
    }
}

- (void)hideHUDLoadingView {
    [BSProgressHUD hideHUDForView:self animated:YES];
}

@end
