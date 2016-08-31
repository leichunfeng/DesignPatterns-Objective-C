//
//  Adapter.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/24.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Player.h"
#import "Forwards.h"
#import "Guards.h"
#import "Translator.h"

@interface Adapter : XCTestCase

@end

@implementation Adapter

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    Player *b = [[Forwards alloc] initWithName:@"巴蒂尔"];
    [b attack];
    Player *m = [[Guards alloc] initWithName:@"麦克格雷迪"];
    [m attack];
    Player *ym = [[Translator alloc] initWithName:@"姚明"];
    [ym attack];
    [ym defense];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
