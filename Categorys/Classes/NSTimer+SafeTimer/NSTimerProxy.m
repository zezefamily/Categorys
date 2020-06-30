//
//  NSTimerProxy.m
//  TestDemo333
//
//  Created by 泽泽 on 2020/6/30.
//  Copyright © 2020 泽泽. All rights reserved.
//

#import "NSTimerProxy.h"

@implementation NSTimerProxy

// 此时就是NSTimer 内部向 target 发送 selector
// 来到ZZProxy，发现方法未实现
// 触发消息转发机制(这里只有慢速转发(方法签名+转发调用))
- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    NSMethodSignature *sig;
    //去self.targetObjc 获取签名
    if(self.targetObjc != nil){
        sig = [self.targetObjc methodSignatureForSelector:sel];
    }else{
        sig = [NSMethodSignature signatureWithObjCTypes:"v:@"];
    }
    return sig;
}
- (void)forwardInvocation:(NSInvocation *)invocation
{
    //调用self.targetObjc中的方法
    if(self.targetObjc != nil){
        [invocation invokeWithTarget:self.targetObjc];
    }else{
        [self deallocTimer];
    }
}
- (void)deallocTimer
{
    [self.timer invalidate];
    self.timer = nil;
    NSLog(@"Timer释放");
}

@end
