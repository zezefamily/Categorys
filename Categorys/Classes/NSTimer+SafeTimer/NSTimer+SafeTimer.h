//
//  NSTimer+SafeTimer.h
//  TestDemo333
//
//  Created by 泽泽 on 2020/6/30.
//  Copyright © 2020 泽泽. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (SafeTimer)

+ (NSTimer *)zz_scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo;

@end

NS_ASSUME_NONNULL_END
