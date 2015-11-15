//
//  BridgeTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "HandsetBrand.h"
#import "HandsetBrandM.h"
#import "HandsetBrandN.h"
#import "HandsetSoft.h"
#import "HandsetGame.h"
#import "HandsetAddressList.h"

@interface BridgeTests : XCTestCase

@end

@implementation BridgeTests

- (void)testBridge {
    HandsetBrand *handsetBrand = [[HandsetBrandM alloc] init];
    
    handsetBrand.handsetSoft = [[HandsetGame alloc] init];
    [handsetBrand run];
    
    handsetBrand.handsetSoft = [[HandsetAddressList alloc] init];
    [handsetBrand run];
    
    handsetBrand = [[HandsetBrandN alloc] init];
    
    handsetBrand.handsetSoft = [[HandsetGame alloc] init];
    [handsetBrand run];
    
    handsetBrand.handsetSoft = [[HandsetAddressList alloc] init];
    [handsetBrand run];
}

@end
