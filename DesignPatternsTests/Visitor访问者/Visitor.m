//
//  Visitor.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/31.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ObjectStructure.h"
#import "Man.h"
#import "Woman.h"
#import "Success.h"
#import "Failing.h"
#import "Amativeness.h"

@interface Visitor : XCTestCase

@end

@implementation Visitor

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    ObjectStructure *o = [[ObjectStructure alloc] init];
    [o attach:[[Man alloc] init]];
    [o attach:[[Woman alloc] init]];
    
    Success *v1 = [[Success alloc] init];
    [o display:v1];
    
    Failing *v2 = [[Failing alloc] init];
    [o display:v2];
    
    Amativeness *v3 = [[Amativeness alloc] init];
    [o display:v3];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
