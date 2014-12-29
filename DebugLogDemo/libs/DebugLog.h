//
//  DebugLog.h
//  iOS_YingbiShufa
//
//  Created by timliu on 14-10-13.
//  Copyright (c) 2014年 timliu: 9925124@qq.com. All rights reserved.
//

#ifndef DebugLog_h
#define DebugLog_h

// 如果处于调试状态  [file release];
#ifdef DEBUG
//#define MyLog(...) NSLog(__VA_ARGS__)
#define MyLog(fmt, ...) {                                       \
NSString* file = [[NSString alloc] initWithFormat:@"%s", __FILE__];  \
NSLog((@"%@(%@):%d > " fmt), [file lastPathComponent], NSStringFromSelector(_cmd), __LINE__, ##__VA_ARGS__);             \
}
#else // 发布打包
#define MyLog(...)
#endif


#endif
