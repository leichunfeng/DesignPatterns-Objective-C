//
//  DPUndergraduateFactory.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPUndergraduateFactory.h"
#import "DPUndergraduate.h"

@implementation DPUndergraduateFactory

- (id<DPLeiFeng>)createLeiFeng {
    return [DPUndergraduate new];
}

@end
