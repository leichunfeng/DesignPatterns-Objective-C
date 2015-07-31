//
//  DPEveningState.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPEveningState.h"
#import "DPWork.h"
#import "DPRestState.h"
#import "DPSleepingState.h"

@implementation DPEveningState

- (void)writeProgram:(DPWork *)work {
    if (work.finished) {
        work.state = [[DPRestState alloc] init];
        [work writeProgram];
    } else {
        if (work.hour < 21) {
            NSLog(@"当前时间：{%.f}点，加班哦，疲累之极", work.hour);
        } else {
            work.state = [[DPSleepingState alloc] init];
            [work writeProgram];
        }
    }
}

@end
