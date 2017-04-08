//
//  NavigationController.m
//  MultiMediaPlayer
//
//  Created by Nigel Lee on 07/04/2017.
//  Copyright © 2017 Apress. All rights reserved.
//

#import "NavigationController.h"
#import "PlayGuideViewController.h"
#import "MultiMediaPlayerViewController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 支持的设备方向
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    if ([self.topViewController isKindOfClass:[PlayGuideViewController class]]) {
        return UIDeviceOrientationLandscapeLeft;
    } else {
        return UIDeviceOrientationLandscapeLeft;
    }
}

// 是否支持自动旋转
- (BOOL)shouldAutorotate
{
    if ([self.topViewController isKindOfClass:[MultiMediaPlayerViewController class]]) {
        return YES;
    }
    if ([self.topViewController isKindOfClass:[PlayGuideViewController class]]) {
        return NO;
    }
    return NO;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
