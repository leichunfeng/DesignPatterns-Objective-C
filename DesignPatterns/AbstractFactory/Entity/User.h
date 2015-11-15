//
//  User.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 用户类
@interface User : NSObject

/// 用户 id
@property (nonatomic, copy) NSString *userId;

/// 用户名
@property (nonatomic, copy) NSString *username;

@end
