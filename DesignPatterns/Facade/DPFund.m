//
//  DPFund.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/18.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPFund.h"
#import "DPStock1.h"
#import "DPStock2.h"
#import "DPStock3.h"
#import "DPNationalDebt1.h"
#import "DPRealty1.h"

@interface DPFund ()

@property (strong, nonatomic) DPStock1 *stock1;
@property (strong, nonatomic) DPStock2 *stock2;
@property (strong, nonatomic) DPStock3 *stock3;
@property (strong, nonatomic) DPNationalDebt1 *nationalDebt1;
@property (strong, nonatomic) DPRealty1 *realty1;

@end

@implementation DPFund

- (instancetype)init {
    self = [super init];
    if (self) {
        self.stock1 = [DPStock1 new];
        self.stock2 = [DPStock2 new];
        self.stock3 = [DPStock3 new];
        self.nationalDebt1 = [DPNationalDebt1 new];
        self.realty1 = [DPRealty1 new];
    }
    return self;
}

- (void)buyFund {
    [self.stock1 buy];
    [self.stock2 buy];
    [self.stock3 buy];
    [self.nationalDebt1 buy];
    [self.realty1 buy];
}

- (void)sellFund {
    [self.stock1 sell];
    [self.stock2 sell];
    [self.stock3 sell];
    [self.nationalDebt1 sell];
    [self.realty1 sell];
}

@end
