//
//  Proxy.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "Proxy.h"
#import "Pursuit.h"

@interface Proxy ()

@property (strong, nonatomic) Pursuit *pursuit;

@end

@implementation Proxy

- (instancetype)initWithSchoolGirl:(SchoolGirl *)schoolGirl {
    self = [super init];
    if (self) {
        self.pursuit = [[Pursuit alloc] initWithSchoolGirl:schoolGirl];
    }
    return self;
}

- (void)giveDolls {
    [self.pursuit giveDolls];
}

- (void)giveFlowers {
    [self.pursuit giveFlowers];
}

- (void)giveChocolate {
    [self.pursuit giveChocolate];
}

@end
