//
//  Command.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Barbecuer.h"
#import "BakeMuttonCommand.h"
#import "BakeChickenWingCommand.h"
#import "Waiter.h"
@interface Command : XCTestCase

@end

@implementation Command

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    Barbecuer *boy = [[Barbecuer alloc] init];
    id<Command> bakeMuttonCommand1 = [[BakeMuttonCommand alloc] initBakeMuttonCommand:boy];
    id<Command> bakeMuttonCommand2 = [[BakeMuttonCommand alloc] initBakeMuttonCommand:boy];
    id<Command> bakeChickenWingCommand = [[BakeChickenWingCommand alloc] initBakeChickenWingCommand:boy];
    
    Waiter *girl = [[Waiter alloc] init];
    [girl setOrder:bakeMuttonCommand1];
    [girl setOrder:bakeMuttonCommand2];
    [girl setOrder:bakeChickenWingCommand];
    
    [girl notify];
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
