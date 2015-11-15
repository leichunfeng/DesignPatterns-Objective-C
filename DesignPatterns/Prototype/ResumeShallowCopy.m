//
//  ResumeShallowCopy.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/20.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "ResumeShallowCopy.h"

@implementation ResumeShallowCopy

- (id)copyWithZone:(NSZone *)zone {
    Resume *resume = [[[self class] allocWithZone:zone] init];
    resume.name = self.name;
    resume.sex  = self.sex;
    resume.age  = self.age;
    resume.workExperience = self.workExperience;
    return resume;
}

@end
