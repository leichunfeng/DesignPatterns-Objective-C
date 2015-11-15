//
//  SingletonTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/4.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Singleton.h"

@interface SingletonTests : XCTestCase

@end

@implementation SingletonTests

- (void)testSingleton {
    Singleton *singleton1 = [Singleton sharedInstance];
    Singleton *singleton2 = [Singleton sharedInstance];
    
    XCTAssertEqualObjects(singleton1, singleton2);
}

@end
