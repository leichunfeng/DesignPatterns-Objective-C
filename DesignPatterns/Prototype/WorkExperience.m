//
//  WorkExperience.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/20.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "WorkExperience.h"

@implementation WorkExperience

- (id)copyWithZone:(NSZone *)zone {
    WorkExperience *workExperience = [[self class] allocWithZone:zone];
    workExperience.workDate = [self.workDate copy];
    workExperience.company  = [self.company copy];
    return workExperience;
}

@end
