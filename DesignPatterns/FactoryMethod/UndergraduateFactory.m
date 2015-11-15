//
//  UndergraduateFactory.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "UndergraduateFactory.h"
#import "Undergraduate.h"

@implementation UndergraduateFactory

- (id<ILeiFeng>)createLeiFeng {
    return [[Undergraduate alloc] init];
}

@end
