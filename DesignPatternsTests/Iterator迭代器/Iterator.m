//
//  Iterator.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ConcreteAggregate.h"
#import "ConcreteIterator.h"
@interface Iterator : XCTestCase

@end

@implementation Iterator

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    ConcreteAggregate *a = [[ConcreteAggregate alloc] init];
    [a addObjectWithName:@"大鸟" index:0];
    [a addObjectWithName:@"小菜" index:1];
    [a addObjectWithName:@"行李" index:2];
    [a addObjectWithName:@"老外" index:3];
    [a addObjectWithName:@"内部员工" index:4];
    [a addObjectWithName:@"小偷" index:5];
    
    ConcreteIterator *i = [[ConcreteIterator alloc] initConcreteIterator:a];
    while (![i isDone]) {
        NSLog(@"%@,请买车票！",[i currentItem]);
        [i next];
    }
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
