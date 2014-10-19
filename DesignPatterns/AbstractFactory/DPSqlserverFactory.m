//
//  DPFactorySqlserver.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPSqlserverFactory.h"
#import "DPSqlserverUserCrud.h"
#import "DPSqlserverDepartmentCrud.h"

@implementation DPSqlserverFactory

- (id<DPUserCrud>)createUserCrud {
    return [DPSqlserverUserCrud new];
}

- (id<DPDepartmentCrud>)createDepartmentCrud {
    return [DPSqlserverDepartmentCrud new];
}

@end
