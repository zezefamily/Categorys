#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSTimer+SafeTimer.h"
#import "NSTimerProxy.h"

FOUNDATION_EXPORT double CategorysVersionNumber;
FOUNDATION_EXPORT const unsigned char CategorysVersionString[];

