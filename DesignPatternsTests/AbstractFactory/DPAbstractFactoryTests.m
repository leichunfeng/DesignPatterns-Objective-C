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
#import "DPFactorySqlserver.h"
#import "DPFactoryAccess.h"

@interface DPAbstractFactoryTests : XCTestCase

@end

@implementation DPAbstractFactoryTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testAbstractFactory
{
    DPUser *user = [DPUser new];
    DPDepartment *department = [DPDepartment new];
    
    id <DPFactory> factory = [DPFactorySqlserver new];
//    id <DPFactory> factory = [DPFactoryAccess new];
    
    id <DPUserCrud> userCrud = [factory createUserCrud];
    [userCrud insert:user];
    [userCrud getUser:1];
    
    id <DPDepartmentCrud> departmentCrud = [factory createDepartmentCrud];
    [departmentCrud insert:department];
    [departmentCrud getDepartment:1];
}

@end
