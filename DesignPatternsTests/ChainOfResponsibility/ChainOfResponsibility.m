//
//  ChainOfResponsibility.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CommonManager.h"
#import "Majordomo.h"
#import "GeneralManager.h"

@interface ChainOfResponsibility : XCTestCase

@end

@implementation ChainOfResponsibility

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    CommonManager *jingli = [[CommonManager alloc] initWithName:@"经理"];
    Majordomo *zongjian = [[Majordomo alloc] initWithName:@"总监"];
    GeneralManager *zongjingli = [[GeneralManager alloc] initWithName:@"总经理"];
    [jingli settingSuperior:zongjian];
    [zongjian settingSuperior:zongjingli];
    
    Request *request = [[Request alloc] initWithType:RequestType_Leave content:@"小菜请假" number:1];
    [jingli requestApplications:request];
    
    Request *request1 = [[Request alloc] initWithType:RequestType_Leave content:@"小菜请假" number:4];
    [jingli requestApplications:request1];
    
    Request *request2 = [[Request alloc] initWithType:RequestType_Leave content:@"小菜请假" number:8];
    [jingli requestApplications:request2];
    
    Request *request3 = [[Request alloc] initWithType:RequestType_SalaryRaise content:@"小菜请求加薪" number:500];
    [jingli requestApplications:request3];
    
    Request *request4 = [[Request alloc] initWithType:RequestType_SalaryRaise content:@"小菜请求加薪" number:1000];
    [jingli requestApplications:request4];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
