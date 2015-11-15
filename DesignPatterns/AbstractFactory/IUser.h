//
//  IUser.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

/// 用于访问用户的接口
@protocol IUser <NSObject>

/// 新增用户
///
/// @param user 用户对象
- (void)insert:(User *)user;

/// 获取用户
///
/// @param userId 用户 id
///
/// @return 用户对象
- (User *)getUser:(NSString *)userId;

@end
