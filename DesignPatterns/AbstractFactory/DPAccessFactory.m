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
    return [DPAccessUserCrud new];
}

- (id<DPDepartmentCrud>)createDepartmentCrud {
    return [DPAccessDepartmentCrud new];
}

@end
