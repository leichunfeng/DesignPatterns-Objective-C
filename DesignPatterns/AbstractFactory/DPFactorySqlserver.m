//
//  DPFactorySqlserver.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPFactorySqlserver.h"
#import "DPUserCrudSqlserver.h"
#import "DPDepartmentCrudSqlserver.h"

@implementation DPFactorySqlserver

- (id<DPUserCrud>)createUserCrud {
    return [DPUserCrudSqlserver new];
}

- (id<DPDepartmentCrud>)createDepartmentCrud {
    return [DPDepartmentCrudSqlserver new];
}

@end
