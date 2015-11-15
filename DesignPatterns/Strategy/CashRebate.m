//
//  CashRebate.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "CashRebate.h"

@interface CashRebate ()

@property (nonatomic) CGFloat moneyRebate;

@end

@implementation CashRebate

- (instancetype)initWithMoneyRebate:(CGFloat)moneyRebate {
    self = [super init];
    if (self) {
        self.moneyRebate = moneyRebate;
    }
    return self;
}

- (CGFloat)acceptCash:(CGFloat)cash {
    return cash * self.moneyRebate;
}

@end
