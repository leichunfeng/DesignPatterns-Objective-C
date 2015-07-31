//
//  DPBuilderTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DPPersonBuilder.h"
#import "DPPersonThinBuilder.h"
#import "DPPersonFatBuilder.h"
#import "DPPersonDirector.h"

@interface DPBuilderTests : XCTestCase

@end

@implementation DPBuilderTests

- (void)testBuilder {
    id <DPPersonBuilder> personBuilder = [[DPPersonThinBuilder alloc] init];
    DPPersonDirector *personDirector = [[DPPersonDirector alloc] initWithPersonBuilder:personBuilder];
    [personDirector buildPerson];
    
    personBuilder = [[DPPersonFatBuilder alloc] init];
    personDirector = [[DPPersonDirector alloc] initWithPersonBuilder:personBuilder];
    [personDirector buildPerson];
}

@end
