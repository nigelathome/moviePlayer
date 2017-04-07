//
//  ViewController.m
//  MultiMediaPlayer
//
//  Created by Nigel Lee on 07/04/2017.
//  Copyright © 2017 Apress. All rights reserved.
//

#import "PlayGuideViewController.h"
#import "ComDef.h"

@interface PlayGuideViewController ()

@property (nonatomic, strong) UIButton *playLocal;
@property (nonatomic, strong) UIButton *playRemote;
@property (nonatomic, strong) UIImageView *playLocalView;
@property (nonatomic, strong) UIView *playRemoteView;

@end

@implementation PlayGuideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self prefersStatusBarHidden]; // 隐藏顶部状态栏
    
    CGRect headerRect = CGRectMake(kScreenWidth/3 - adapteWith(48), adapteWith(48), adapteWith(80), adapteWith(102));
    self.playLocal = [[UIButton alloc] initWithFrame:headerRect];
    [self.playLocal addTarget:self action:@selector(playVideo:) forControlEvents:UIControlEventTouchUpInside];
    
    self.playLocalView = [[UIImageView alloc] initWithFrame:headerRect];
    UIImage *backgroundImage = [UIImage imageNamed:@"play_local"];//本地文件
    self.playLocalView.image = backgroundImage;
    [self.playLocal addSubview:self.playLocalView];
    [self.view addSubview:self.playLocal];
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

//实现隐藏状态栏方法
- (BOOL)prefersStatusBarHidden{
    
    return YES;
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
