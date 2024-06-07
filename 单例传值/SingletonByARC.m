//
//  SingletonByARC.m
//  单例传值
//
//  Created by 张旭洋 on 2024/6/7.
//

#import "SingletonByARC.h"

@implementation SingletonByARC

static SingletonByARC* insVar = nil;

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (!insVar) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            insVar = [super allocWithZone: zone];
        });
    }
    return insVar;
}

- (instancetype)init {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        insVar = [super init];
    });
    return insVar;
}

+ (instancetype)sharedInstance {
    return [[self alloc] init];
}

@end
