//
//  PrototypeTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Resume.h"
#import "ResumeShallowCopy.h"
#import "ResumeDeepCopy.h"

@interface PrototypeTests : XCTestCase

@end

@implementation PrototypeTests

- (void)testPrototypeShallowCopy {
    Resume *resume1 = [[ResumeShallowCopy alloc] initWithName:@"大鸟"];
    [resume1 setPersonalInfoWithSex:@"男" age:@"29"];
    [resume1 setWorkExperienceWithWorkDate:@"1998-2000" company:@"XX 公司"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume1));
    
    Resume *resume2 = [resume1 copy];
    [resume2 setWorkExperienceWithWorkDate:@"1998-2006" company:@"YY 企业"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume2));
    
    Resume *resume3 = [resume1 copy];
    [resume3 setPersonalInfoWithSex:@"男" age:@"24"];
    [resume3 setWorkExperienceWithWorkDate:@"1998-2003" company:@"ZZ 企业"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume3));
    
    [resume1 display];
    [resume2 display];
    [resume3 display];
}

- (void)testPrototypeDeepCopy {
    Resume *resume1 = [[ResumeDeepCopy alloc] initWithName:@"大鸟"];
    [resume1 setPersonalInfoWithSex:@"男" age:@"29"];
    [resume1 setWorkExperienceWithWorkDate:@"1998-2000" company:@"XX 公司"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume1));
    
    Resume *resume2 = [resume1 copy];
    [resume2 setWorkExperienceWithWorkDate:@"1998-2006" company:@"YY 企业"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume2));
    
    Resume *resume3 = [resume1 copy];
    [resume3 setPersonalInfoWithSex:@"男" age:@"24"];
    [resume3 setWorkExperienceWithWorkDate:@"1998-2003" company:@"ZZ 企业"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume3));
    
    [resume1 display];
    [resume2 display];
    [resume3 display];
}

@end
