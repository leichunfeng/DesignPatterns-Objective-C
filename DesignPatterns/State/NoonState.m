//
//  NoonState.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "NoonState.h"
#import "Work.h"
#import "AfternoonState.h"

@implementation NoonState

- (void)writeProgram:(Work *)work {
    if (work.hour < 13) {
        NSLog(@"当前时间：{%.f}点，饿了，午饭；犯困，午休", work.hour);
    } else {
        work.state = [[AfternoonState alloc] init];
        [work writeProgram];
    }
}

@end
