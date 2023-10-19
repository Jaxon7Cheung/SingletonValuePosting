//
//  DataManager.h
//  单例传值
//
//  Created by 张旭洋 on 2023/10/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DataManager : NSObject

//用来存储要传递的值
@property (nonatomic, strong)NSString* data;

+ (instancetype)sharedManager;

@end

NS_ASSUME_NONNULL_END
