//
//  DPPersonDirector.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPPersonDirector.h"

@interface DPPersonDirector ()

@property (strong, nonatomic) id <DPPersonBuilder> personBuilder;

@end

@implementation DPPersonDirector

- (instancetype)initWithPersonBuilder:(id<DPPersonBuilder>)personBuilder {
    self = [super init];
    if (self) {
        self.personBuilder = personBuilder;
    }
    return self;
}

- (void)buildPerson {
    [self.personBuilder buildHead];
    [self.personBuilder buildBody];
    [self.personBuilder buildArmLeft];
    [self.personBuilder buildArmRight];
    [self.personBuilder buildLegLeft];
    [self.personBuilder buildLegRight];
}

@end
