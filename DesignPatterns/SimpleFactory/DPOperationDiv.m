//
//  DPOperationDiv.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPOperationDiv.h"

@implementation DPOperationDiv

- (CGFloat)getResult {
    NSParameterAssert(self.numberB != 0);
    return self.numberA / self.numberB;
}

@end
