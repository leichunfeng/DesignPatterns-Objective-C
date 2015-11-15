//
//  Work.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "Work.h"
#import "ForenoonState.h"

@implementation Work

- (instancetype)init {
    self = [super init];
    if (self) {
        self.state = [[ForenoonState alloc] init];
    }
    return self;
}

- (void)writeProgram {
    [self.state writeProgram:self];
}

@end
