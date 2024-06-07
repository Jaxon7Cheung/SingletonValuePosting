//
//  SingletonByMRC.m
//  单例传值
//
//  Created by 张旭洋 on 2024/6/7.
//

#import "SingletonByMRC.h"

@implementation SingletonByMRC

static SingletonByMRC* instanceVariable = nil;

/*
 alloc方法内部会调用allocWithZone:
 参数zone时系统分配给App的内存
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (!instanceVariable) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{  // 安全（这段代码只会被调用一次）
            instanceVariable = [super allocWithZone: zone];
        });
    }
    return instanceVariable;
}

- (oneway void)release {
    //  allocWithZone中使用了GCD命令创建对象的代码只执行一次（单例），如果被释放则无法再创建
    //  重写release方法，替换为空操作，防止instanceVariable被释放
}

//  重写retain方法
- (instancetype)retain {
    return self;
}

//  重写retainCount锁定引用计数
- (NSUInteger)retainCount {
    return 1;
}

//  重写init方法，防止单例所拥有的属性值被重置
//  让初始化的方法只能执行一次，自然属性值就没有机会被重置
- (instancetype)init {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instanceVariable = [super init];
    });
    return instanceVariable;
}

//  仿造系统的单例创建方式，提供类方法
+ (nonnull instancetype)sharedSingletonByMRC {
    // 由于我们已经重写了init方法保证了单例对象的唯一了，所以这里直接调用init方法即可。
    return [[self alloc] init];
}

@end

