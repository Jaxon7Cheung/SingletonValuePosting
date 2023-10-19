//
//  RecieveClass.m
//  单例传值
//
//  Created by 张旭洋 on 2023/10/19.
//

#import "RecieveClass.h"

@implementation RecieveClass

- (void)recieveValue {
    DataManager* sharedManager = [DataManager sharedManager];
    self.valueToRecieve = sharedManager.data;
    NSLog(@"%@", self.valueToRecieve);
}

@end
