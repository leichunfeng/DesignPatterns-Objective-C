//
//  SQLServerDepartment.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDepartment.h"

/// 用于访问 SQL Server 中的部门
@interface SQLServerDepartment : NSObject <IDepartment>

@end
