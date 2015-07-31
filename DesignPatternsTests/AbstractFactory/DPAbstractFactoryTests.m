//
//  DPAbstractFactoryTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DPUser.h"
#import "DPDepartment.h"
#import "DPFactory.h"
#import "DPSqlserverFactory.h"
#import "DPAccessFactory.h"

@interface DPAbstractFactoryTests : XCTestCase

@end

@implementation DPAbstractFactoryTests

- (void)testAbstractFactory {
    DPUser *user = [[DPUser alloc] init];
    DPDepartment *department = [[DPDepartment alloc] init];
    
    id <DPFactory> factory = [[DPSqlserverFactory alloc] init];
//    id <DPFactory> factory = [[DPAccessFactory alloc] init];
    
    id <DPUserCrud> userCrud = [factory createUserCrud];
    [userCrud insert:user];
    [userCrud getUser:1];
    
    id <DPDepartmentCrud> departmentCrud = [factory createDepartmentCrud];
    [departmentCrud insert:department];
    [departmentCrud getDepartment:1];
}

@end
