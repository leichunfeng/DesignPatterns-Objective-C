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
    id<DPOperation> operation = [DPOperationFactory createOperation:DPOperationTypeAdd];
    [operation setNumberA:100.0];
    [operation setNumberB:25.0];
    CGFloat result = [operation getResult];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == 125.0);
    
    operation = [DPOperationFactory createOperation:DPOperationTypeSub];
    [operation setNumberA:100.0];
    [operation setNumberB:25.0];
    result = [operation getResult];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == 75.0);
    
    operation = [DPOperationFactory createOperation:DPOperationTypeMul];
    [operation setNumberA:100.0];
    [operation setNumberB:25.0];
    result = [operation getResult];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == 2500.0);
    
    operation = [DPOperationFactory createOperation:DPOperationTypeDiv];
    [operation setNumberA:100.0];
    [operation setNumberB:25.0];
    result = [operation getResult];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == 4.0);
}

@end
