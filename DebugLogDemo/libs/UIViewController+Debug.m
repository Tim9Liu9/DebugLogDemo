//
//  UIViewController+Debug.m
//  DebugView
//
//  Created by timliu on 14-12-28.
//  Copyright (c) 2014年 Tapan. All rights reserved.
//

#import "UIViewController+Debug.h"
#import <objc/runtime.h>




@implementation UIViewController(Debug)


+ (void)swizzleSelector:(SEL)originalSelector withSelector:(SEL)swizzledSelector {
    Class class = [self class];
    
    
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    
    
    
    BOOL didAddMethodInit=class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    
    if (didAddMethodInit) {
        class_addMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    }else{
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

+(void)load{
    
// 如果处于调试状态 就执行
#ifdef DEBUG
    [self swizzleSelector:@selector(viewDidLoad) withSelector:@selector(viewDidLoad_debug)];
#else // 发布打包

#endif
    
    
}



-(void)viewDidLoad_debug{
    
    [self debugLog];
    
}

-(void) debugLog
{

//    Class class = [self class];
//    const char *nameA = class_getName(class);
//    NSLog(@"nameA=%s", nameA);
    NSLog(@"%@.m(viewDidLoad)---->", [self class]);
    
}


@end
