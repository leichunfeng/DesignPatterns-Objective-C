//
//  AccessDepartment.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "AccessDepartment.h"

@implementation AccessDepartment

- (void)insert:(Department *)department {
    NSLog(@"在 Access 中给 Department 表增加一条记录");
}

- (Department *)getDepartment:(NSString *)departmentId {
    NSLog(@"在 Access 中根据 departmentId 得到 Department 表一条记录");
    return nil;
}

@end
