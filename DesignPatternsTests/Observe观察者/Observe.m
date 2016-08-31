//
//  Observe.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/23.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ConcreteSubject.h"
#import "ConcreteObserver.h"
@interface Observe : XCTestCase

@end

@implementation Observe

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    ConcreteSubject *subject = [[ConcreteSubject alloc] init];
    [subject attach:[[ConcreteObserver alloc] initConcreteObserver:subject name:@"X"]];
    [subject attach:[[ConcreteObserver alloc] initConcreteObserver:subject name:@"Y"]];
    [subject attach:[[ConcreteObserver alloc] initConcreteObserver:subject name:@"Z"]];
    
    subject.subjectState = @"ABC";
    [subject notify];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
