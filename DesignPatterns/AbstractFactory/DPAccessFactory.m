//
//  DPFactoryAccess.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPAccessFactory.h"
#import "DPAccessUserCrud.h"
#import "DPAccessDepartmentCrud.h"

@implementation DPAccessFactory

- (id<DPUserCrud>)createUserCrud {
    return [[DPAccessUserCrud alloc] init];
}

- (id<DPDepartmentCrud>)createDepartmentCrud {
    return [[DPAccessDepartmentCrud alloc] init];
}

@end
