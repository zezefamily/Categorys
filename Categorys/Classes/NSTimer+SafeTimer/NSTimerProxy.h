//
//  NSTimerProxy.h
//  TestDemo333
//
//  Created by 泽泽 on 2020/6/30.
//  Copyright © 2020 泽泽. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimerProxy : NSProxy

@property (nonatomic,weak) id targetObjc;

@property (nonatomic,weak) NSTimer *timer;

@end

NS_ASSUME_NONNULL_END
