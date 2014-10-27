//
//  DPRestState.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPRestState.h"
#import "DPWork.h"

@implementation DPRestState

- (void)writeProgram:(DPWork *)work {
    NSLog(@"当前时间：{%.f}点，下班回家了", work.hour);
}

@end
