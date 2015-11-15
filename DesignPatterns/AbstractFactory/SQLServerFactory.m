//
//  SQLServerFactory.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "SQLServerFactory.h"
#import "SQLServerUser.h"
#import "SQLServerDepartment.h"

@implementation SQLServerFactory

- (id<IUser>)createUser {
    return [[SQLServerUser alloc] init];
}

- (id<IDepartment>)createDepartment {
    return [[SQLServerDepartment alloc] init];
}

@end
