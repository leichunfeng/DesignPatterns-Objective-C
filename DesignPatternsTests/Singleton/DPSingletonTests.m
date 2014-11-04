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
    DPSingleton *singleton2 = [[DPSingleton alloc] init];
    DPSingleton *singleton3 = [DPSingleton allocWithZone:NULL];
    DPSingleton *singleton4 = [DPSingleton new];
    DPSingleton *singleton5 = [[DPSingleton alloc] copy];
    DPSingleton *singleton6 = [[DPSingleton alloc] mutableCopy];
    
    XCTAssertEqualObjects(singleton1, singleton2);
    XCTAssertEqualObjects(singleton1, singleton3);
    XCTAssertEqualObjects(singleton1, singleton4);
    XCTAssertEqualObjects(singleton1, singleton5);
    XCTAssertEqualObjects(singleton1, singleton6);
}

@end
