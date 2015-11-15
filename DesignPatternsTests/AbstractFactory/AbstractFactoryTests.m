//
//  AbstractFactoryTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "User.h"
#import "Department.h"
#import "IFactory.h"
#import "SQLServerFactory.h"
#import "AccessFactory.h"

@interface AbstractFactoryTests : XCTestCase

@end

@implementation AbstractFactoryTests

- (void)testAbstractFactory {
    User *user = [[User alloc] init];
    Department *department = [[Department alloc] init];
    
    id<IFactory> factory = [[SQLServerFactory alloc] init];
//    id<IFactory> factory = [[AccessFactory alloc] init];
    
    id<IUser> userCrud = [factory createUser];
    [userCrud insert:user];
    [userCrud getUser:@"1"];
    
    id<IDepartment> departmentCrud = [factory createDepartment];
    [departmentCrud insert:department];
    [departmentCrud getDepartment:@"1"];
}

@end
