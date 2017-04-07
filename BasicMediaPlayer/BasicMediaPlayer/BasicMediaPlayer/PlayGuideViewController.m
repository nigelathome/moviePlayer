//
//  PlayGuideViewController.m
//  BasicMediaPlayer
//
//  Created by Nigel Lee on 04/04/2017.
//  Copyright © 2017 Nigel Lee. All rights reserved.
//

#import "PlayGuideViewController.h"

static const NSString *kplayLocal = @"playLocalVideo";
static const NSString *kplayRemote = @"playRemoteVideo";

@interface PlayGuideViewController ()

@property (nonatomic, strong) UIButton *playLocal;
@property (nonatomic, strong) UIButton *playRemote;
@property (nonatomic, strong) UIImageView *playLocalView;
@property (nonatomic, strong) UIView *playRemoteView;

@end

@implementation PlayGuideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.playLocal = [[UIButton alloc] init];
    [self.playLocalView performSelector:@selector(playVideo:) withObject:nil];
    [self.view addSubview:self.playLocal];
    
    self.playRemote = [[UIButton alloc] init];
    [self.view addSubview:self.playRemote];
    
    self.playLocalView = [[UIImage alloc] imagew];
    self.playLocalView
    self.playRemoteView = [[UIView alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma events
- (void)setPlayLocal:(UIButton *)playLocal
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
