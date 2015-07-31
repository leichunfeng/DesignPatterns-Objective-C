//
//  DPWork.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPWork.h"
#import "DPForenoonState.h"

@implementation DPWork

- (instancetype)init {
    self = [super init];
    if (self) {
        self.state = [[DPForenoonState alloc] init];
    }
    return self;
}

- (void)writeProgram {
    [self.state writeProgram:self];
}

@end
