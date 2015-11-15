//
//  ProxyTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "SchoolGirl.h"
#import "Proxy.h"

@interface ProxyTests : XCTestCase

@end

@implementation ProxyTests

- (void)testProxy {
    SchoolGirl *schoolGirl = [[SchoolGirl alloc] init];
    schoolGirl.name = @"李娇娇";
    
    Proxy *proxy = [[Proxy alloc] initWithSchoolGirl:schoolGirl];
    [proxy giveDolls];
    [proxy giveFlowers];
    [proxy giveChocolate];
}

@end
