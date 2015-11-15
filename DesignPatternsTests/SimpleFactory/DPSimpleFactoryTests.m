//
//  DPSimpleFactoryTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DPOperation.h"
#import "DPOperationFactory.h"

@interface DPSimpleFactoryTests : XCTestCase

@end

@implementation DPSimpleFactoryTests

- (void)testSimpleFactory {
    DPOperation *operation = [DPOperationFactory createOperation:DPOperationTypeAdd];
    operation.numberA = 100;
    operation.numberB = 25;
    XCTAssertTrue([operation getResult] == 125);
    
    operation = [DPOperationFactory createOperation:DPOperationTypeSub];
    operation.numberA = 100;
    operation.numberB = 25;
    XCTAssertTrue([operation getResult] == 75);
    
    operation = [DPOperationFactory createOperation:DPOperationTypeMul];
    operation.numberA = 100;
    operation.numberB = 25;
    XCTAssertTrue([operation getResult] == 2500);
    
    operation = [DPOperationFactory createOperation:DPOperationTypeDiv];
    operation.numberA = 100;
    operation.numberB = 25;
    XCTAssertTrue([operation getResult] == 4);
}

@end
