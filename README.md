# RJAudioTool
简单封装了基于AVFoundation框架的一个播放音效的工具类。
使用方法：将文件夹托人工程中，导入RJAudioTool.h头文件即可。
提供了+ (void)playSound:(NSString *)filename方法来播放音效文件。
记得在didReceiveMemoryWarning里面+ (void)disposeSound:(NSString *)filename一下。
