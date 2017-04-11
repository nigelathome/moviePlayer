//
//  MediaPlayerViewController.h
//  MultiMediaPlayer
//
//  Created by Nigel Lee on 10/04/2017.
//  Copyright © 2017 Apress. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface MediaPlayerViewController : UIViewController

@property (nonatomic, strong) AVPlayer *player;

@end
