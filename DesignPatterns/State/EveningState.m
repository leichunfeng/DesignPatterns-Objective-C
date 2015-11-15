//
//  EveningState.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "EveningState.h"
#import "Work.h"
#import "RestState.h"
#import "SleepingState.h"

@implementation EveningState

- (void)writeProgram:(Work *)work {
    if (work.finished) {
        work.state = [[RestState alloc] init];
        [work writeProgram];
    } else {
        if (work.hour < 21) {
            NSLog(@"当前时间：{%.f}点，加班哦，疲累之极", work.hour);
        } else {
            work.state = [[SleepingState alloc] init];
            [work writeProgram];
        }
    }
}

@end
