//
//  Memento.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/25.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GameRole.h"
#import "RoleStateMemento.h"
#import "RoleStateCaretaker.h"
@interface Memento : XCTestCase

@end

@implementation Memento

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    //大战Boss前
    GameRole *gr = [[GameRole alloc] init];
    [gr getInitState];
    [gr stateDisplay];
    
    //保存进度
    RoleStateCaretaker *stateAdmin = [[RoleStateCaretaker alloc] initRoleStaeCaretakerWithMemento:[gr saveState]];
    
    //大战Boss时，损耗严重
    [gr fight];
    [gr stateDisplay];
    
    //恢复之前状态
    [gr recoveryState:stateAdmin.memento];
    [gr stateDisplay];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
