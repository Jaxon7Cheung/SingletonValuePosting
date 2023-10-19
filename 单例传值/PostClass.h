//
//  PostClass.h
//  单例传值
//
//  Created by 张旭洋 on 2023/10/19.
//

#import <Foundation/Foundation.h>
#import "DataManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface PostClass : NSObject

@property (nonatomic, strong)NSString* valueToPost;

- (void)postValue: (NSString *)value;

@end

NS_ASSUME_NONNULL_END
