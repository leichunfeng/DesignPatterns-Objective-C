//
//  DPCashContext.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-22.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPCashContext.h"

@interface DPCashContext ()

@property (strong, nonatomic) id <DPCashSuper> cashSuper;

@end

@implementation DPCashContext

- (instancetype)initWithCashSuper:(id <DPCashSuper>)cashSuper {
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
