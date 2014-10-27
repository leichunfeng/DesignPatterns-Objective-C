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
    DPUser *user = [DPUser new];
    DPDepartment *department = [DPDepartment new];
    
    id <DPFactory> factory = [DPSqlserverFactory new];
//    id <DPFactory> factory = [DPAccessFactory new];
    
    id <DPUserCrud> userCrud = [factory createUserCrud];
    [userCrud insert:user];
    [userCrud getUser:1];
    
    id <DPDepartmentCrud> departmentCrud = [factory createDepartmentCrud];
    [departmentCrud insert:department];
    [departmentCrud getDepartment:1];
}

@end
