//
//  Mediator.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UnitedNationsSecurityCouncil.h"
#import "USA.h"
#import "Iraq.h"
@interface Mediator : XCTestCase

@end

@implementation Mediator

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    UnitedNationsSecurityCouncil *UNSC = [[UnitedNationsSecurityCouncil alloc] init];
    USA *c1 = [[USA alloc] initCountryWithUnitedNations:UNSC];
    Iraq *c2 = [[Iraq alloc] initCountryWithUnitedNations:UNSC];
    
    [c1 declare:@"不准研制核武器，否则要发动战争！"];
    [c2 declare:@"我们没有核武器，也不怕侵略。"];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
