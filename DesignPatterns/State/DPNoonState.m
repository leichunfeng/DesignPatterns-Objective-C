//
//  DPNoonState.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPNoonState.h"
#import "DPWork.h"
#import "DPAfternoonState.h"

@implementation DPNoonState

- (void)writeProgram:(DPWork *)work {
    if (work.hour < 13) {
        NSLog(@"当前时间：{%.f}点，饿了，午饭；犯困，午休", work.hour);
    } else {
        work.state = [DPAfternoonState new];
        [work writeProgram];
    }
}

@end
