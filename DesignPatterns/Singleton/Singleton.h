//
//  Singleton.h
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/4.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

///  工厂方法，获取共享的实例
///
///  @return 共享的实例
+ (instancetype)sharedInstance;

@end
