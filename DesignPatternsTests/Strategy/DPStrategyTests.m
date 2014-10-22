//
//  DPStrategyTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-22.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DPCashContext.h"
#import "DPCashNormal.h"
#import "DPCashRebate.h"
#import "DPCashReturn.h"

@interface DPStrategyTests : XCTestCase

@end

@implementation DPStrategyTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testStrategy {
    CGFloat result = 0.0;
    
    CGFloat price  = 100.0;
    CGFloat number = 25;
    
    DPCashContext *cashContext = [[DPCashContext alloc] initWithCashSuper:[DPCashNormal new]];
    result = [cashContext getResult:price*number];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == 2500);
    
    cashContext = [[DPCashContext alloc] initWithCashSuper:[[DPCashRebate alloc] initWithMoneyRebate:0.8]];
    result = [cashContext getResult:price*number];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == 2000);
    
    cashContext = [[DPCashContext alloc] initWithCashSuper:[[DPCashReturn alloc] initWithMoneyCondition:300 moneyReturn:100]];
    result = [cashContext getResult:price*number];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == 1700);
}

@end
