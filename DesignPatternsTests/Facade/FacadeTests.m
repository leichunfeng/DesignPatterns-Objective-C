//
//  FacadeTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/18.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Fund.h"

@interface FacadeTests : XCTestCase

@end

@implementation FacadeTests

- (void)testFacade {
    Fund *fund = [[Fund alloc] init];
    [fund buyFund];  // 基金购买
    [fund sellFund]; // 基金赎回
}

@end
