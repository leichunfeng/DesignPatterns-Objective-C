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
    
    id<IUser> iUser = [factory createUser];
    [iUser insert:user];
    [iUser getUser:@"1"];
    
    id<IDepartment> iDepartment = [factory createDepartment];
    [iDepartment insert:department];
    [iDepartment getDepartment:@"1"];
}

@end
