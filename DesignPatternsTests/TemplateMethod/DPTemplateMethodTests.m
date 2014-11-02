//
//  DPTemplateMethodTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DPTestPaper.h"
#import "DPTestPaperA.h"
#import "DPTestPaperB.h"

@interface DPTemplateMethodTests : XCTestCase

@end

@implementation DPTemplateMethodTests

- (void)testTemplateMethod {
    NSLog(@"学生甲抄的试卷：");
    DPTestPaper *studentA = [DPTestPaperA new];
    [studentA testQuestion1];
    [studentA testQuestion2];
    [studentA testQuestion3];
    
    NSLog(@"学生乙抄的试卷：");
    DPTestPaper *studentB = [DPTestPaperB new];
    [studentB testQuestion1];
    [studentB testQuestion2];
    [studentB testQuestion3];
}

@end
