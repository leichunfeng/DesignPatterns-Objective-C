//
//  IDepartment.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Department.h"

/// 用于访问部门的接口
@protocol IDepartment <NSObject>

/// 新增部门
///
/// @param department 部门对象
- (void)insert:(Department *)department;

/// 获取部门
///
/// @param departmentId 部门 id
///
/// @return 部门对象
- (Department *)getDepartment:(NSString *)departmentId;

@end
