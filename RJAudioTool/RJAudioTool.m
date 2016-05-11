//
//  RJAudioTool.m
//  sound
//
//  Created by lirenjie on 16/4/7.
//  Copyright © 2016年 lirenjie. All rights reserved.
//

#import "RJAudioTool.h"
#import <AVFoundation/AVFoundation.h>

@implementation RJAudioTool

static NSMutableDictionary *_soundIDDic;

+ (void)initialize{
    _soundIDDic = [NSMutableDictionary dictionary];
}

+ (void)playSound:(NSString *)filename{
    
    if (!filename) return;
    SystemSoundID soundID = [_soundIDDic[filename] unsignedIntValue];
    if (!soundID) {
        SystemSoundID soundID;
        NSURL *url = [[NSBundle mainBundle] URLForResource:filename withExtension:nil];
        if (!url) return;
        AudioServicesCreateSystemSoundID((__bridge CFURLRef _Nonnull)(url), &soundID);
        
        _soundIDDic[filename] = @(soundID);
    }
    
    AudioServicesPlayAlertSound(soundID);
}

+ (void)disposeSound:(NSString *)filename{
    if (!filename) return;
    SystemSoundID soundID = [_soundIDDic[filename] unsignedIntValue];
    if (soundID) {
        AudioServicesDisposeSystemSoundID(soundID);
        [_soundIDDic removeObjectForKey:filename];
    }
}
@end
