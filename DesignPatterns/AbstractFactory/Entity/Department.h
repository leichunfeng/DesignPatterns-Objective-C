//
//  Department.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 部门类
@interface Department : NSObject

/// 部门 id
@property (nonatomic, copy) NSString *departmentId;

/// 部门名称
@property (nonatomic, copy) NSString *departmentName;

@end
