//
//  MediaPlayerViewController.m
//  MultiMediaPlayer
//
//  Created by Nigel Lee on 10/04/2017.
//  Copyright © 2017 Apress. All rights reserved.
//

static const NSString *PlayerItemStatusContext;

#import "MediaPlayerViewController.h"

@interface MediaPlayerViewController ()

@end

@implementation MediaPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *assetURL = [[NSBundle mainBundle] URLForResource:@"hubblecast" withExtension:@"m4v"];
    AVAsset *asset = [AVAsset assetWithURL:assetURL];
    
    AVPlayerItem *playerItem = [AVPlayerItem playerItemWithAsset:asset];
    // 注册playerItem 为被观察者
    [playerItem addObserver:self forKeyPath:@"status" options:0 context:&PlayerItemStatusContext];
    self.player = [AVPlayer playerWithPlayerItem:playerItem];
    
    AVPlayerLayer *playerLayer = [AVPlayerLayer playerLayerWithPlayer:self.player];
    [self.view.layer addSublayer:playerLayer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

  // playerItem状态发生变化以后，回调
- (void)observeValueForKeyPath:(nullable NSString *)keyPath ofObject:(nullable id)object change:(nullable NSDictionary<NSKeyValueChangeKey, id> *)change context:(nullable void *)context {
    if (context == &PlayerItemStatusContext) {
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        if (playerItem.status == AVPlayerStatusReadyToPlay) {
            // to do when ready to play
        }
    }
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
