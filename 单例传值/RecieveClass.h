//
//  RecieveClass.h
//  单例传值
//
//  Created by 张旭洋 on 2023/10/19.
//

#import <Foundation/Foundation.h>
#import "DataManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface RecieveClass : NSObject

@property (nonatomic, strong)NSString* valueToRecieve;

- (void)recieveValue;

@end

NS_ASSUME_NONNULL_END
