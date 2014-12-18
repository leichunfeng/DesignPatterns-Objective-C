//
//  DPFacadeTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/18.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DPFund.h"

@interface DPFacadeTests : XCTestCase

@property (strong, nonatomic) DPFund *fund;

@end

@implementation DPFacadeTests

- (void)setUp {
    [super setUp];
    self.fund = [DPFund new];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testFacade {
    [self.fund buyFund];  // 基金购买
    [self.fund sellFund]; // 基金赎回
}

@end
