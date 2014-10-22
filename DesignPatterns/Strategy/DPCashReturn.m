//
//  DPCashReturn.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPCashReturn.h"

@interface DPCashReturn ()

@property (nonatomic) CGFloat moneyCondition;
@property (nonatomic) CGFloat moneyReturn;

@end

@implementation DPCashReturn

- (instancetype)initWithMoneyCondition:(CGFloat)moneyCondition moneyReturn:(CGFloat)moneyReturn {
    self = [super init];
    if (self) {
        self.moneyCondition = moneyCondition;
        self.moneyReturn    = moneyReturn;
    }
    return self;
}

- (CGFloat)acceptCash:(CGFloat)cash {
    return cash >= self.moneyCondition ? cash - floorf(cash / self.moneyCondition) * self.moneyReturn : cash;
}

@end
