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

- (void)testFactoryMethod {
    id <DPLeiFengFactory> leiFengFactory = [[DPUndergraduateFactory alloc] init];
//    id <DPLeiFengFactory> leiFengFactory = [[DPVolunteerFactory alloc] init];
    
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
