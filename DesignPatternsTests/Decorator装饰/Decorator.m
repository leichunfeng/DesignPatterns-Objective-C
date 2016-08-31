//
//  Decorator.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/23.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"
#import "Finery.h"
#import "TShirts.h"
#import "BigTrouser.h"

@interface Decorator : XCTestCase

@end

@implementation Decorator

- (void)testDecorator {
    Person *xc = [[Person alloc] initWithName:@"小菜"];
    NSLog(@"第一种装扮！");
    Sneakers *s = [[Sneakers alloc] initWithDecorate:xc];
    TShirts *t = [[TShirts alloc] initWithDecorate:s];
    BigTrouser *b = [[BigTrouser alloc] initWithDecorate:t];
    [b show];
    
    Finery *f = [[Finery alloc] initWithDecorate:xc];
    NSLog(@"第二种装扮！");
    f = [[BigTrouser alloc] initWithDecorate:f];
    f = [[TShirts alloc] initWithDecorate:f];
    f = [[Sneakers alloc] initWithDecorate:f];
    [f show];
}

@end
