//
//  DPDepartmentCrud.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPDepartment.h"

@protocol DPDepartmentCrud <NSObject>

///  新增部门
///
///  @param department 部门对象
- (void)insert:(DPDepartment *)department;

///  根据deptId获取部门
///
///  @param deptId 部门id
///
///  @return 部门对象
- (DPDepartment *)getDepartment:(NSInteger)deptId;

@end
