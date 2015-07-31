//
//  DPForenoonState.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPForenoonState.h"
#import "DPNoonState.h"
#import "DPWork.h"

@implementation DPForenoonState

- (void)writeProgram:(DPWork *)work {
    if (work.hour < 12) {
        NSLog(@"当前时间：{%.f}点，上午工作，精神百倍", work.hour);
    } else {
        work.state = [[DPNoonState alloc] init];
        [work writeProgram];
    }
}

@end
