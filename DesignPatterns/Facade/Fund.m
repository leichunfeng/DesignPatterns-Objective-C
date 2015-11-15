//
//  Fund.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/18.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "Fund.h"
#import "Stock1.h"
#import "Stock2.h"
#import "Stock3.h"
#import "NationalDebt1.h"
#import "Realty1.h"

@interface Fund ()

@property (strong, nonatomic) Stock1 *stock1;
@property (strong, nonatomic) Stock2 *stock2;
@property (strong, nonatomic) Stock3 *stock3;
@property (strong, nonatomic) NationalDebt1 *nationalDebt1;
@property (strong, nonatomic) Realty1 *realty1;

@end

@implementation Fund

- (instancetype)init {
    self = [super init];
    if (self) {
        self.stock1 = [[Stock1 alloc] init];
        self.stock2 = [[Stock2 alloc] init];
        self.stock3 = [[Stock3 alloc] init];
        self.nationalDebt1 = [[NationalDebt1 alloc] init];
        self.realty1 = [[Realty1 alloc] init];
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
