//
//  DPSleepingState.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPSleepingState.h"
#import "DPWork.h"

@implementation DPSleepingState

- (void)writeProgram:(DPWork *)work {
    NSLog(@"当前时间：{%.f}点，不行了，睡着了", work.hour);
}

@end
