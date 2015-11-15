//
//  DPOperation.m
//  DesignPatterns
//
//  Created by leichunfeng on 15/11/15.
//  Copyright © 2015年 zdnst. All rights reserved.
//

#import "DPOperation.h"

@implementation DPOperation

- (CGFloat)getResult {
    NSAssert(NO, @"%s must be overridden by subclasses", __func__);
    return 0;
}

@end
