//
//  NSTimer+SafeTimer.m
//  TestDemo333
//
//  Created by 泽泽 on 2020/6/30.
//  Copyright © 2020 泽泽. All rights reserved.
//  利用消息转发来断开NSTimer对象与视图之间的引用关系

#import "NSTimer+SafeTimer.h"
#import "NSTimerProxy.h"
@implementation NSTimer (SafeTimer)

+ (NSTimer *)zz_scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo
{
    NSTimerProxy *proxy = [NSTimerProxy alloc];
    proxy.targetObjc = aTarget;
    //这里就不存在双向的持有关系，避免循环引用
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:ti target:proxy selector:aSelector userInfo:userInfo repeats:yesOrNo];
    proxy.timer = timer;
    return timer;
}

@end
