//
//  DPFactoryAccess.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPFactoryAccess.h"
#import "DPUserCrudAccess.h"
#import "DPDepartmentCrudAccess.h"

@implementation DPFactoryAccess

- (id<DPUserCrud>)createUserCrud {
    return [DPUserCrudAccess new];
}

- (id<DPDepartmentCrud>)createDepartmentCrud {
    return [DPDepartmentCrudAccess new];
}

@end
