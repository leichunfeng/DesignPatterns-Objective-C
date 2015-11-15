//
//  FactoryMethodTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LeiFeng.h"
#import "LeiFengFactory.h"
#import "UndergraduateFactory.h"
#import "VolunteerFactory.h"

@interface FactoryMethodTests : XCTestCase

@end

@implementation FactoryMethodTests

- (void)testFactoryMethod {
    id<LeiFengFactory> leiFengFactory = [[UndergraduateFactory alloc] init];
//    id<LeiFengFactory> leiFengFactory = [[VolunteerFactory alloc] init];
    
    id<LeiFeng> studentA = [leiFengFactory createLeiFeng];
    [studentA sweep];
    [studentA wash];
    [studentA buyRice];
    
    id<LeiFeng> studentB = [leiFengFactory createLeiFeng];
    [studentB sweep];
    [studentB wash];
    [studentB buyRice];
    
    id<LeiFeng> studentC = [leiFengFactory createLeiFeng];
    [studentC sweep];
    [studentC wash];
    [studentC buyRice];
}

@end
