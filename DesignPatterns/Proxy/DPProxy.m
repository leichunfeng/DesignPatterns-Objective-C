//
//  DPProxy.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPProxy.h"
#import "DPPursuit.h"

@interface DPProxy ()

@property (strong, nonatomic) DPPursuit *pursuit;

@end

@implementation DPProxy

- (instancetype)initWithSchoolGirl:(DPSchoolGirl *)schoolGirl {
    self = [super init];
    if (self) {
        self.pursuit = [[DPPursuit alloc] initWithSchoolGirl:schoolGirl];
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
