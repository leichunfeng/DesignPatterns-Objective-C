//
//  CashContext.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-22.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "CashContext.h"

@interface CashContext ()

@property (strong, nonatomic) id<CashSuper> cashSuper;

@end

@implementation CashContext

- (instancetype)initWithCashSuper:(id<CashSuper>)cashSuper {
    self = [super init];
    if (self) {
        self.cashSuper = cashSuper;
    }
    return self;
}

- (CGFloat)getResult:(CGFloat)money {
    return [self.cashSuper acceptCash:money];
}

@end
