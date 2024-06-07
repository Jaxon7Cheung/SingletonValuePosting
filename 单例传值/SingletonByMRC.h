//
//  SingletonByMRC.h
//  单例传值
//
//  Created by 张旭洋 on 2024/6/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SingletonByMRC : NSObject

+ (instancetype)sharedSingletonByMRC;

@end

NS_ASSUME_NONNULL_END
