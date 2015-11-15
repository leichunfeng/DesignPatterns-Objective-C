//
//  ForenoonState.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "ForenoonState.h"
#import "NoonState.h"
#import "Work.h"

@implementation ForenoonState

- (void)writeProgram:(Work *)work {
    if (work.hour < 12) {
        NSLog(@"当前时间：{%.f}点，上午工作，精神百倍", work.hour);
    } else {
        work.state = [[NoonState alloc] init];
        [work writeProgram];
    }
}

@end
