//
//  Resume.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "Resume.h"

@implementation Resume

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
        self.workExperience = [[WorkExperience alloc] init];
    }
    return self;
}

- (void)setPersonalInfoWithSex:(NSString *)sex age:(NSString *)age {
    self.sex = sex;
    self.age = age;
}

- (void)setWorkExperienceWithWorkDate:(NSString *)workDate company:(NSString *)company {
    self.workExperience.workDate = workDate;
    self.workExperience.company  = company;
}

- (void)display {
    NSLog(@"%@ %@ %@", self.name, self.sex, self.age);
    NSLog(@"工作经历 %@ %@", self.workExperience.workDate, self.workExperience.company);
}

- (id)copyWithZone:(NSZone *)zone {
    return nil;
}

@end
