//
//  StrategyTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-22.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "CashContext.h"
#import "CashNormal.h"
#import "CashRebate.h"
#import "CashReturn.h"

@interface StrategyTests : XCTestCase

@end

@implementation StrategyTests

- (void)testStrategy {
    CGFloat result = 0.0;
    
    CGFloat price  = 100.0;
    CGFloat number = 25;
    
    CashContext *cashContext = [[CashContext alloc] initWithCashSuper:[[CashNormal alloc] init]];
    result = [cashContext getResult:price*number];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == 2500);
    
    cashContext = [[CashContext alloc] initWithCashSuper:[[CashRebate alloc] initWithMoneyRebate:0.8]];
    result = [cashContext getResult:price*number];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == 2000);
    
    cashContext = [[CashContext alloc] initWithCashSuper:[[CashReturn alloc] initWithMoneyCondition:300 moneyReturn:100]];
    result = [cashContext getResult:price*number];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == 1700);
}

@end
