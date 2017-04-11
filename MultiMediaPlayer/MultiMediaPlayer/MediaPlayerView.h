//
//  MediaPlayerView.h
//  MultiMediaPlayer
//
//  Created by Nigel Lee on 10/04/2017.
//  Copyright © 2017 Apress. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MediaPlayerOverlayView.h"

@class AVPlayer;
@class AVPlayerLayer;

@interface MediaPlayerView : UIView

- (id)initWithPlayer:(AVPlayer *)player;

@property (nonatomic, strong) MediaPlayerOverlayView *playerOverlayView;

@end
