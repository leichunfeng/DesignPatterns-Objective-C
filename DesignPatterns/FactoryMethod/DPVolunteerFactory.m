//
//  DPVolunteerFactory.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPVolunteerFactory.h"
#import "DPVolunteer.h"

@implementation DPVolunteerFactory

- (id<DPLeiFeng>)createLeiFeng {
    return [[DPVolunteer alloc] init];
}

@end
