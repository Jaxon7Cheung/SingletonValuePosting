//
//  PostClass.m
//  单例传值
//
//  Created by 张旭洋 on 2023/10/19.
//

#import "PostClass.h"

@implementation PostClass

- (void)postValue: (NSString *)value {
    self.valueToPost = value;
    DataManager* sharedManager = [DataManager sharedManager];
    sharedManager.data = self.valueToPost;
}

@end
