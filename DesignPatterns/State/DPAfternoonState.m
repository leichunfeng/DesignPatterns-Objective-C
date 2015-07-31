//
//  DPAfternoonState.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPAfternoonState.h"
#import "DPWork.h"
#import "DPEveningState.h"

@implementation DPAfternoonState

- (void)writeProgram:(DPWork *)work {
    if (work.hour < 17) {
        NSLog(@"当前时间：{%.f}点，下午状态还不错，继续努力", work.hour);
    } else {
        work.state = [[DPEveningState alloc] init];
        [work writeProgram];
    }
}

@end
