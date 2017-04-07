//
//  ViewController.m
//  MultiMediaPlayer
//
//  Created by Nigel Lee on 07/04/2017.
//  Copyright © 2017 Apress. All rights reserved.
//

#import "PlayGuideViewController.h"
#import "ComDef.h"
#import "AppDelegate.h"

@interface PlayGuideViewController ()

@property (nonatomic, strong) UIButton *playLocal;
@property (nonatomic, strong) UIButton *playRemote;
@property (nonatomic, strong) UIImageView *playLocalView;
@property (nonatomic, strong) UIImageView *playRemoteView;

@end

@implementation PlayGuideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //在一个界面需要旋转时用Appdelegate的单例来实现：
    AppDelegate *appdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    appdelegate.allowRotation= YES;
    
    
    [self.navigationController.navigationBar setHidden:YES];
    
    CGRect Rect1 = CGRectMake(kScreenWidth/3, adapteWith(48), adapteWith(80), adapteWith(102));
    self.playLocal = [[UIButton alloc] initWithFrame:Rect1];
    [self.playLocal addTarget:self action:@selector(playVideo:) forControlEvents:UIControlEventTouchUpInside];
    
    CGRect Rect2 = CGRectMake(kScreenWidth/3 * 2, adapteWith(48), adapteWith(80), adapteWith(102));
    self.playRemote = [[UIButton alloc] initWithFrame:Rect1];
    [self.playRemote addTarget:self action:@selector(playVideo:) forControlEvents:UIControlEventTouchUpInside];
    
    self.playLocalView = [[UIImageView alloc] initWithFrame:Rect1];
    UIImage *backgroundImage1 = [UIImage imageNamed:@"play_local"];//本地文件
    self.playLocalView.image = backgroundImage1;
    [self.playLocal addSubview:self.playLocalView];
    [self.view addSubview:self.playLocal];

    self.playLocalView = [[UIImageView alloc] initWithFrame:Rect2];
    UIImage *backgroundImage2 = [UIImage imageNamed:@"play_remote"];//远程文件
    self.playLocalView.image = backgroundImage2;
    [self.playRemote addSubview:self.playLocalView];
    [self.view addSubview:self.playRemote];
    
    
//    //旋转屏幕，但是只旋转当前的View
//    [[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationLandscapeRight];
//    self.view.transform = CGAffineTransformMakeRotation(M_PI/2);
//    CGRect frame = [UIScreen mainScreen].applicationFrame;
//    self.view.bounds = CGRectMake(0, 0, frame.size.height, 320);
    
    [self prefersStatusBarHidden]; // 隐藏顶部状态栏

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma events
- (void)playVideo:(id)sender
{
    // push player vc
    
    
}

#pragma tips
- (BOOL)alertErrorTip
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Asset Unavailable"
                                                        message:@"The requested asset could not be loaded."
                                                       delegate:nil cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
    [alertView show];
    return NO;
    
}



@end
