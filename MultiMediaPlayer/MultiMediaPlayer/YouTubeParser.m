//
//  YoutubeParser.m
//  MultiMediaPlayer
//
//  Created by Nigel Lee on 2017/4/9.
//  Copyright © 2017年 Apress. All rights reserved.
//

/**
 
 *NSURL propety brief
 
NSURL *url = [NSURL URLWithString:@"http://www.baidu.com/search?id=1"];

NSLog(@"scheme:%@", [url scheme]); //协议 http

NSLog(@"host:%@", [url host]);     //域名 www.baidu.com

NSLog(@"absoluteString:%@", [url absoluteString]); //完整的url字符串 http://www.baidu.com:8080/search?id=1   (不打印出来端口 8080)

NSLog(@"relativePath: %@", [url relativePath]); //相对路径 search

NSLog(@"port :%@", [url port]);  // 端口 8080

NSLog(@"path: %@", [url path]);  // 路径 search

NSLog(@"pathComponents:%@", [url pathComponents]); // search

NSLog(@"Query:%@", [url query]);  //参数 id=1
 
**/

#import "YouTubeParser.h"

@implementation YouTubeParser

+ (NSString *)youTubeIDFromYouTubeURL:(NSURL *)youTubeUrl {
    
    NSString *youTubeID = nil;
    
    if ([youTubeUrl.host isEqualToString:@"youtu.be"]) {
        youTubeID = [[youTubeUrl pathComponents] objectAtIndex:1];
    } else if (NSNotFound != [youTubeUrl.absoluteString rangeOfString:@"www.youtube.com/embed"].location) { //url中存在子串@"www.youtube.com/embed"
        youtubeID = [[youtubeURL pathComponents] objectAtIndex:2];
    } else {
        //
    }
    
    return youTubeID;
}

+ (void)h264VideosWithYoutubeURL:(NSURL *)youTubeUrl
                   completeBlock:(void (^)(NSDictionary *dic, NSError *NSError))completeBlock {
    NSString *youTubeID = [self youTubeIDFromYouTubeURL:youTubeUrl];
    
}

@end
