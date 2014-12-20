//
//  DPResumeShallowCopy.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/20.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPResumeShallowCopy.h"

@implementation DPResumeShallowCopy

- (id)copyWithZone:(NSZone *)zone {
    DPResume *resume = [[[self class] allocWithZone:zone] init];
    resume.name = self.name;
    resume.sex  = self.sex;
    resume.age  = self.age;
    resume.workExperience = self.workExperience;
    return resume;
}

@end
