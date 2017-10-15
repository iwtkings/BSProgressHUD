//
//  ViewController.m
//  BSProgressHUD
//
//  Created by 王通 on 2017/10/15.
//  Copyright © 2017年 王通. All rights reserved.
//

#import "ViewController.h"
#import "UIView+MBProgressHUD.h"
#import "BSProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (IBAction)actionShow:(id)sender {
//    [BSProgressHUD showHUDAddedTo:self.view animated:YES];
    
    [self.view showMBHUDLoadingView:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view hideHUDLoadingView];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
