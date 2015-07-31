//
//  DPFactory.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPUserCrud.h"
#import "DPDepartmentCrud.h"

@protocol DPFactory <NSObject>

///  创建对用户crud操作的对象
///
///  @return 对用户crud操作的对象
- (id<DPUserCrud>)createUserCrud;

///  创建对部门crud操作的对象
///
///  @return 对部门crud操作的对象
- (id<DPDepartmentCrud>)createDepartmentCrud;

@end
