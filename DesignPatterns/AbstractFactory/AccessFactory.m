//
//  FactoryAccess.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "AccessFactory.h"
#import "AccessUser.h"
#import "AccessDepartment.h"

@implementation AccessFactory

- (id<IUser>)createUser {
    return [[AccessUser alloc] init];
}

- (id<IDepartment>)createDepartment {
    return [[AccessDepartment alloc] init];
}

@end
