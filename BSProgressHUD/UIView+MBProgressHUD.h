//
//  UIView+MBProgressHUD.h
//  TestHud
//
//  Created by 王通 on 2017/4/12.
//  Copyright © 2017年 王通. All rights reserved.
//

#import <UIKit/UIKit.h>

//HUD文本显示时间
extern CGFloat const BSMBHUD_TextShowHideTime;

/**
 HUD 扩展
 */
@interface UIView (MBProgressHUD)

#pragma mark - hud 文字提示

/**
 *  文字提示
 *
 *  @param hudText 提示文字
 */
- (void)showMBHUDText:(NSString *)hudText;

#pragma mark - hud 加载视图
/**
 *  显示 hud 加载 view
 *
 *  @param hudText  提示文字
 */
- (void)showMBHUDLoadingView:(NSString *)hudText;

/**
 *  隐藏 hud 加载 view
 */
- (void)hideHUDLoadingView;

@end
