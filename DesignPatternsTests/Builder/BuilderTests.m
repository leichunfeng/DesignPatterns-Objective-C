//
//  BuilderTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "PersonBuilder.h"
#import "PersonThinBuilder.h"
#import "PersonFatBuilder.h"
#import "PersonDirector.h"

@interface BuilderTests : XCTestCase

@end

@implementation BuilderTests

- (void)testBuilder {
    id<PersonBuilder> personBuilder = [[PersonThinBuilder alloc] init];
    PersonDirector *personDirector = [[PersonDirector alloc] initWithPersonBuilder:personBuilder];
    [personDirector builerson];
    
    personBuilder = [[PersonFatBuilder alloc] init];
    personDirector = [[PersonDirector alloc] initWithPersonBuilder:personBuilder];
    [personDirector builerson];
}

@end
