//
//  PlayGuideViewController.m
//  BasicMediaPlayer
//
//  Created by Nigel Lee on 04/04/2017.
//  Copyright © 2017 Nigel Lee. All rights reserved.
//

#import "PlayGuideViewController.h"

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
