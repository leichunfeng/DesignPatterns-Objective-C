//
//  DPBridgeTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DPHandsetBrand.h"
#import "DPHandsetBrandM.h"
#import "DPHandsetBrandN.h"
#import "DPHandsetSoft.h"
#import "DPHandsetGame.h"
#import "DPHandsetAddressList.h"

@interface DPBridgeTests : XCTestCase

@end

@implementation DPBridgeTests

- (void)testBridge {
    DPHandsetBrand *handsetBrand = [[DPHandsetBrandM alloc] init];
    
    handsetBrand.handsetSoft = [[DPHandsetGame alloc] init];
    [handsetBrand run];
    
    handsetBrand.handsetSoft = [[DPHandsetAddressList alloc] init];
    [handsetBrand run];
    
    handsetBrand = [[DPHandsetBrandN alloc] init];
    
    handsetBrand.handsetSoft = [[DPHandsetGame alloc] init];
    [handsetBrand run];
    
    handsetBrand.handsetSoft = [[DPHandsetAddressList alloc] init];
    [handsetBrand run];
}

@end
