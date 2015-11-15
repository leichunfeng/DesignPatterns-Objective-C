//
//  FactoryMethodTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ILeiFeng.h"
#import "ILeiFengFactory.h"
#import "UndergraduateFactory.h"
#import "VolunteerFactory.h"

@interface FactoryMethodTests : XCTestCase

@end

@implementation FactoryMethodTests

- (void)testFactoryMethod {
    id<ILeiFengFactory> leiFengFactory = [[UndergraduateFactory alloc] init];
//    id<ILeiFengFactory> leiFengFactory = [[VolunteerFactory alloc] init];
    
    id<ILeiFeng> studentA = [leiFengFactory createLeiFeng];
    [studentA sweep];
    [studentA wash];
    [studentA buyRice];
    
    id<ILeiFeng> studentB = [leiFengFactory createLeiFeng];
    [studentB sweep];
    [studentB wash];
    [studentB buyRice];
    
    id<ILeiFeng> studentC = [leiFengFactory createLeiFeng];
    [studentC sweep];
    [studentC wash];
    [studentC buyRice];
}

@end
