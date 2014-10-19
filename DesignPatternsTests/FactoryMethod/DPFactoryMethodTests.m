//
//  DPFactoryMethodTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DPLeiFeng.h"
#import "DPLeiFengFactory.h"
#import "DPUndergraduateFactory.h"
#import "DPVolunteerFactory.h"

@interface DPFactoryMethodTests : XCTestCase

@end

@implementation DPFactoryMethodTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testFactoryMethod
{
    id <DPLeiFengFactory> leiFengFactory = [DPUndergraduateFactory new];
//    id <DPLeiFengFactory> leiFengFactory = [DPVolunteerFactory new];
    
    id <DPLeiFeng> studentA = [leiFengFactory createLeiFeng];
    [studentA sweep];
    [studentA wash];
    [studentA buyRice];
    
    id <DPLeiFeng> studentB = [leiFengFactory createLeiFeng];
    [studentB sweep];
    [studentB wash];
    [studentB buyRice];
    
    id <DPLeiFeng> studentC = [leiFengFactory createLeiFeng];
    [studentC sweep];
    [studentC wash];
    [studentC buyRice];
}

@end
