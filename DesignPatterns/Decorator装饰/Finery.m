//
//  Finery.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/23.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Finery.h"

@interface Finery ()

@property (nonatomic, strong) Person *component;

@end

@implementation Finery


- (instancetype)initWithDecorate:(Person *)component{
    self = [super init];
    if (self) {
        self.component = component;
    }
    return self;
}

- (void)show{
    if (self.component) {
        [self.component show];
    }
}

@end


@implementation Sneakers

- (void)show{
    NSLog(@"破球鞋");
    [super show];
}

@end


