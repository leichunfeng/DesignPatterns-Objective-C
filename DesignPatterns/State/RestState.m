//
//  RestState.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "RestState.h"
#import "Work.h"

@implementation RestState

- (void)writeProgram:(Work *)work {
    NSLog(@"当前时间：{%.f}点，下班回家了", work.hour);
}

@end
