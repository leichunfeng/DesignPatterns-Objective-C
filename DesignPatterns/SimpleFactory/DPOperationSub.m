//
//  DPOperationSub.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPOperationSub.h"

@implementation DPOperationSub

@synthesize numberA = _numberA;
@synthesize numberB = _numberB;

- (CGFloat)getResult {
    return self.numberA - self.numberB;
}

@end
