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
//#import "HCYoutubeParser.h"

@interface PlayGuideViewController ()

@property (nonatomic, strong) UIButton *playLocal;
@property (nonatomic, strong) UIButton *playRemote;

@property (nonatomic, strong) UILabel *playLocalLabel;
@property (nonatomic, strong) UILabel *playRemoteLabel;

@property (nonatomic, strong) NSURL *localURL;
@property (nonatomic, strong) NSURL *streamingURL;

@end

@implementation PlayGuideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.navigationController.navigationBar setHidden:YES];
    [self initWidgetsLayout];
    
    // 旋转当前的View旋转屏幕
    self.view.transform = CGAffineTransformMakeRotation(M_PI/2);
    CGRect frame = [UIScreen mainScreen].bounds;
    self.view.bounds = CGRectMake(0, 0, frame.size.height, frame.size.width);
    
}

- (void)initWidgetsLayout {
    //    CGRect Rect1 = CGRectMake(kScreenWidth/3, adapteWith(48), adapteWith(80), adapteWith(102));
    CGRect Rect1 = CGRectMake(160, 80, 130, 163);
    self.playLocal = [[UIButton alloc] initWithFrame:Rect1];
    UIImage *backgroundImage1 = [UIImage imageNamed:@"play_local"];//本地文件
    [self.playLocal setBackgroundImage:backgroundImage1 forState:UIControlStateNormal];
    [self.playLocal addTarget:self action:@selector(playVideo:) forControlEvents:UIControlEventTouchUpInside];
    [self.playLocal setTag:22];
    [self.view addSubview:self.playLocal];
    
    self.playLocalLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.playLocal.frame.origin.x, self.playLocal.frame.origin.y + self.playLocal.frame.size.height + 30, self.playLocal.frame.size.width, 22)];
    self.playLocalLabel.textAlignment = NSTextAlignmentCenter;
    self.playLocalLabel.text = @"Play Local";
    [self.view addSubview:self.playLocalLabel];
    
    CGRect Rect2 = CGRectMake(self.playLocal.frame.origin.x + self.playLocal.frame.size.width + 100, self.playLocal.frame.origin.y, self.playLocal.frame.size.width, self.playLocal.frame.size.height);
    self.playRemote = [[UIButton alloc] initWithFrame:Rect2];
    UIImage *backgroundImage2 = [UIImage imageNamed:@"play_remote"];//远程文件
    [self.playRemote setBackgroundImage:backgroundImage2 forState:UIControlStateNormal];
    [self.playRemote addTarget:self action:@selector(playVideo:) forControlEvents:UIControlEventTouchUpInside];
    [self.playRemote setTag:23];
    [self.view addSubview:self.playRemote];
   
    self.playRemoteLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.playRemote.frame.origin.x, self.playRemote.frame.origin.y + self.playRemote.frame.size.height + 30, self.playRemote.frame.size.width, 22)];
    self.playRemoteLabel.textAlignment = NSTextAlignmentCenter;
    self.playRemoteLabel.text = @"Play Remote";
    [self.view addSubview:self.playRemoteLabel];
}

- (void)initURL {
    // Init local asset
    self.localURL = [[NSBundle mainBundle] URLForResource:@"hubblecast" withExtension:@"m4v"];
    
    // Init streaming asset
//    [HCYoutubeParser h264videosWithYoutubeURL:[NSURL URLWithString:YOUTUBE_URL] completeBlock:^(NSDictionary *urls, NSError *error) {
//        self.streamingURL = [NSURL URLWithString:urls[@"hd720"]];
//    }];

}

// iOS 9 以后隐藏当前VC状态栏的方法：重写UIViewController的prefersStatusBarHidden方法
- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma events
- (void)playVideo:(id)sender
{
    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *playButton = (UIButton *)sender;
        switch (playButton.tag) {
            case 22:
                // do sth for prepare local video
                break;
            
            case 23:
                // do sth for prepare remote video
                break;

            default:
                break;
        }
    }
}

#pragma tips
- (BOOL)alertErrorTip
{
    NSString *message = [[NSString alloc] initWithFormat:@"The requested asset could not be loaded."];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Asset Unavailable"
                                                                   message:message
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK"
                                                     style:UIAlertActionStyleDefault
                                                   handler:nil];
    [alert addAction:action];
    [self presentViewController:alert
                       animated:YES
                     completion:nil];
    return NO;
    
}



@end
