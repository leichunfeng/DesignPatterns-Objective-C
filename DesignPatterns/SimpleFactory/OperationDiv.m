//
//  OperationDiv.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "OperationDiv.h"

@implementation OperationDiv

- (CGFloat)getResult {
    NSParameterAssert(self.numberB != 0);
    return self.numberA / self.numberB;
}

@end
