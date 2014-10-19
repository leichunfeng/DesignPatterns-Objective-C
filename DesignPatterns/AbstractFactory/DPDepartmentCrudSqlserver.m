//
//  DPDepartmentCrudSqlserver.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPDepartmentCrudSqlserver.h"

@implementation DPDepartmentCrudSqlserver

- (void)insert:(DPDepartment *)department {
    NSLog(@"在SQL Server中给Department表增加一条记录");
}

- (DPDepartment *)getDepartment:(NSInteger)deptId {
    NSLog(@"在SQL Server中根据deptId得到Department表一条记录");
    return nil;
}

@end
