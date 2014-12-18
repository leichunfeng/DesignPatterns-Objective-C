//
//  DPPursuit.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPPursuit.h"

@interface DPPursuit ()

@property (strong, nonatomic) DPSchoolGirl *schoolGirl;

@end

@implementation DPPursuit

- (instancetype)initWithSchoolGirl:(DPSchoolGirl *)schoolGirl {
    self = [super init];
    if (self) {
        self.schoolGirl = schoolGirl;
    }
    return self;
}

- (void)giveDolls {
    NSLog(@"%@ 送你洋娃娃", self.schoolGirl.name);
}

- (void)giveFlowers {
    NSLog(@"%@ 送你鲜花", self.schoolGirl.name);
}

- (void)giveChocolate {
    NSLog(@"%@ 送你巧克力", self.schoolGirl.name);
}

@end
