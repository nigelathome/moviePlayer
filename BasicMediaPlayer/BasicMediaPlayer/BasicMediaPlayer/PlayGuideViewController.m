//
//  PlayGuideViewController.m
//  BasicMediaPlayer
//
//  Created by Nigel Lee on 04/04/2017.
//  Copyright © 2017 Nigel Lee. All rights reserved.
//

#import "PlayGuideViewController.h"
#import "comDef.h"

static const NSString *kplayLocal = @"playLocalVideo";
static const NSString *kplayRemote = @"playRemoteVideo";

@interface PlayGuideViewController ()

@property (nonatomic, strong) UIButton *playLocal;
@property (nonatomic, strong) UIButton *playRemote;
@property (nonatomic, strong) UIImageView *playLocalView;
@property (nonatomic, strong) UIView *playRemoteView;

@end

@implementation PlayGuideViewController

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super init]) {
        self.view = [[UIView alloc] initWithFrame:frame];
    }
   
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect headerRect = CGRectMake(kScreenWidth/3 - adapteWith(48), adapteWith(48), adapteWith(80), adapteWith(102));
    self.playLocal = [[UIButton alloc] initWithFrame:headerRect];
    [self.playLocal addTarget:self action:@selector(playVideo:) forControlEvents:UIControlEventTouchUpInside];
    UIImage *backgroundImage = [UIImage imageNamed:@"play_local"];//本地文件
    self.playLocalView.image = backgroundImage;
    self.playLocalView = [[UIImageView alloc] initWithFrame:headerRect];
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
