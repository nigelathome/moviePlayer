//
//  YouTubeParser.h
//  MultiMediaPlayer
//
//  Created by Nigel Lee on 2017/4/9.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YouTubeParser : NSObject

//- (NSString *)youTubeIDFromYouTubeURL:(NSURL *)youTubeUrl;

+ (void)h264VideosWithYoutubeURL:(NSURL *)youTubeUrl
                   completeBlock:(void (^)(NSDictionary *dic, NSError *NSError))completeBlock;
@end
