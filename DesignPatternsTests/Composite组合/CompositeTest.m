//
//  CompositeTest.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/26.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Composite.h"
#import "Leaf.h"
@interface CompositeTest : XCTestCase

@end

@implementation CompositeTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    Composite *root = [[Composite alloc] initCompositeWithName:@"root"];
    [root add:[[Leaf alloc] initWithName:@"Leaf A"]];
    [root add:[[Leaf alloc] initWithName:@"Leaf B"]];
    
    Composite *comp = [[Composite alloc] initCompositeWithName:@"Composite X"];
    [comp add:[[Leaf alloc] initWithName:@"Leaf XA"]];
    [comp add:[[Leaf alloc] initWithName:@"Leaf XB"]];
    
    [root add:comp];
    
    Composite *comp2 = [[Composite alloc] initCompositeWithName:@"Composite XY"];
    [comp2 add:[[Leaf alloc] initWithName:@"Leaf XYA"]];
    [comp2 add:[[Leaf alloc] initWithName:@"Leaf XYB"]];
    
    [comp add:comp2];
    
    [root add:[[Leaf alloc] initWithName:@"Leaf C"]];
    
    Leaf *leaf = [[Leaf alloc] initWithName:@"Leaf D"];
    [root add:leaf];
    [root remove:leaf];
    
    [root display:1];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
