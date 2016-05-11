//
//  RJAudioTool.h
//  sound
//
//  Created by lirenjie on 16/4/7.
//  Copyright © 2016年 lirenjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RJAudioTool : NSObject

+ (void)playSound:(NSString *)filename;
+ (void)disposeSound:(NSString *)filename;

@end
