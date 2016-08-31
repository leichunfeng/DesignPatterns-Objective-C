//
//  Interpreter.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/30.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PlayContext.h"
#import "Expression.h"
#import "Note.h"
#import "Scale.h"

@interface Interpreter : XCTestCase

@end

@implementation Interpreter

- (void)testExample {
    PlayContext *context = [[PlayContext alloc] init];
    context.playText = @"O 2 E 1 A 3 E 1 G 1 D 3 E 1 G 1 A 1 O 3 C 1 O 2 A 1 G 1 C 1 E 1 D 3 ";
    
    id expression = nil;
    while (context.playText.length) {
        NSString *str = [context.playText substringWithRange:NSMakeRange(0, 1)];
        if ([str isEqualToString:@"O"]) {
            expression = [[Scale alloc] init];
        }else if ([str isEqualToString:@"C"] || [str isEqualToString:@"D"] || [str isEqualToString:@"E"] || [str isEqualToString:@"F"] || [str isEqualToString:@"G"] || [str isEqualToString:@"A"] || [str isEqualToString:@"B"] || [str isEqualToString:@"P"]){
            expression = [[Note alloc] init];
        }
        
        [expression interpret:context];
    }
    
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
