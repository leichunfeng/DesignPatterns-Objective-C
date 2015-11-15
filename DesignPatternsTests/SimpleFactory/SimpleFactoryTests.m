//
//  SimpleFactoryTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Operation.h"
#import "OperationFactory.h"

@interface SimpleFactoryTests : XCTestCase

@end

@implementation SimpleFactoryTests

- (void)testSimpleFactory {
    Operation *operation = [OperationFactory createOperation:OperationTypeAdd];
    operation.numberA = 100;
    operation.numberB = 25;
    XCTAssertTrue([operation getResult] == 125);
    
    operation = [OperationFactory createOperation:OperationTypeSub];
    operation.numberA = 100;
    operation.numberB = 25;
    XCTAssertTrue([operation getResult] == 75);
    
    operation = [OperationFactory createOperation:OperationTypeMul];
    operation.numberA = 100;
    operation.numberB = 25;
    XCTAssertTrue([operation getResult] == 2500);
    
    operation = [OperationFactory createOperation:OperationTypeDiv];
    operation.numberA = 100;
    operation.numberB = 25;
    XCTAssertTrue([operation getResult] == 4);
}

@end
