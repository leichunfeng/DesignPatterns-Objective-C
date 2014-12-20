//
//  DPWorkExperience.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/20.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPWorkExperience.h"

@implementation DPWorkExperience

- (id)copyWithZone:(NSZone *)zone {
    DPWorkExperience *workExperience = [[self class] allocWithZone:zone];
    workExperience.workDate = [self.workDate copy];
    workExperience.company  = [self.company copy];
    return workExperience;
}

@end
