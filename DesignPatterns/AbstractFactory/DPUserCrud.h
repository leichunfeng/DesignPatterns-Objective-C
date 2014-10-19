//
//  DPUserCrud.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPUser.h"

@protocol DPUserCrud <NSObject>

/**
 *  新增用户
 *
 *  @param user 用户对象
 */
- (void)insert:(DPUser *)user;

/**
 *  根据userId获取用户
 *
 *  @param userId 用户id
 *
 *  @return 用户对象
 */
- (DPUser *)getUser:(NSInteger)userId;

@end
