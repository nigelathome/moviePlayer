//
//  MediaPlayerView.m
//  MultiMediaPlayer
//
//  Created by Nigel Lee on 10/04/2017.
//  Copyright © 2017 Apress. All rights reserved.
//

#import "MediaPlayerView.h"
#import <AVFoundation/AVFoundation.h>

@implementation MediaPlayerView

- (id)initWithPlayer:(AVPlayer *)player {
    self = [super initWithFrame:CGRectZero];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        self.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        
        [(AVPlayerLayer *)[self layer] setPlayer:player];
        self.playerOverlayView = [[MediaPlayerOverlayView alloc] init];
        self.playerOverlayView.frame = self.bounds;
        [self addSubview:self.playerOverlayView];
    }
    return self;
}
@end
