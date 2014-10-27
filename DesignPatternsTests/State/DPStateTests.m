//
//  DPStateTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DPWork.h"

@interface DPStateTests : XCTestCase

@end

@implementation DPStateTests

- (void)testState {
    // 紧急项目
    DPWork *work = [DPWork new];
    
    work.hour = 9;
    [work writeProgram];
    
    work.hour = 10;
    [work writeProgram];
    
    work.hour = 12;
    [work writeProgram];
    
    work.hour = 13;
    [work writeProgram];
    
    work.hour = 14;
    [work writeProgram];
    
    work.hour = 17;
//    work.finished = YES;
    work.finished = NO;
    [work writeProgram];
    
    work.hour = 19;
    [work writeProgram];
    
    work.hour = 22;
    [work writeProgram];
}

@end
