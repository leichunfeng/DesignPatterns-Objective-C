//
//  IFactory.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUser.h"
#import "IDepartment.h"

/// 抽象工厂接口
@protocol IFactory <NSObject>

/// 创建用于访问用户的对象
///
/// @return 用于访问用户的对象
- (id<IUser>)createUser;

/// 创建用于访问部门的对象
///
/// @return 用于访问部门的对象
- (id<IDepartment>)createDepartment;

@end
