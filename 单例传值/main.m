//
//  main.m
//  单例传值
//
//  Created by 张旭洋 on 2023/10/19.
//

#import <Foundation/Foundation.h>
#import "PostClass.h"
#import "RecieveClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PostClass* postClass = [[PostClass alloc] init];
        [postClass postValue: @"Singleton Pattern"];
        
        RecieveClass* recieveClass = [[RecieveClass alloc] init];
        [recieveClass recieveValue];
    }
    return 0;
}
