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
    DPHandsetBrand *handsetBrand = [DPHandsetBrandM new];
    
    handsetBrand.handsetSoft = [DPHandsetGame new];
    [handsetBrand run];
    
    handsetBrand.handsetSoft = [DPHandsetAddressList new];
    [handsetBrand run];
    
    handsetBrand = [DPHandsetBrandN new];
    
    handsetBrand.handsetSoft = [DPHandsetGame new];
    [handsetBrand run];
    
    handsetBrand.handsetSoft = [DPHandsetAddressList new];
    [handsetBrand run];
}

@end
