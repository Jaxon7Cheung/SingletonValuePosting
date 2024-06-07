//
//  Singleton.h
//  单例传值
//
//  Created by 张旭洋 on 2024/6/7.
//

#ifndef Singleton_h
#define Singleton_h

#define SingletonH(methodName) + (instancetype)shared##methodName;

#define SingletonM(methodName) \
static id _instance = nil; \
+ (instancetype)allocWithZone:(struct _NSZone *)zone { \
    if (!_instance) { \
        static dispatch_once_t onceToken; \
        dispatch_once(&onceToken, ^{ \
            _instance = [super allocWithZone:zone]; \
        }); \
    } \
    return _instance; \
} \
\
- (instancetype)init { \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        _instance = [super init]; \
    }); \
    return _instance; \
} \
\
+ (instancetype)shared##methodName { \
    return [[self alloc] init]; \
}

#endif /* Singleton_h */
