//
//  TemplateMethodTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "TestPaper.h"
#import "TestPaperA.h"
#import "TestPaperB.h"

@interface TemplateMethodTests : XCTestCase

@end

@implementation TemplateMethodTests

- (void)testTemplateMethod {
    NSLog(@"学生甲抄的试卷：");
    TestPaper *studentA = [[TestPaperA alloc] init];
    [studentA testQuestion1];
    [studentA testQuestion2];
    [studentA testQuestion3];
    
    NSLog(@"学生乙抄的试卷：");
    TestPaper *studentB = [[TestPaperB alloc] init];
    [studentB testQuestion1];
    [studentB testQuestion2];
    [studentB testQuestion3];
}

@end
