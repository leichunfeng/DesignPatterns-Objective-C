//
//  DPSingletonTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/4.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DPSingleton.h"

@interface DPSingletonTests : XCTestCase

@end

@implementation DPSingletonTests

- (void)testSingleton {
    DPSingleton *singleton1 = [DPSingleton sharedInstance];
    DPSingleton *singleton2 = [DPSingleton sharedInstance];
    
    XCTAssertEqualObjects(singleton1, singleton2);
}

@end
