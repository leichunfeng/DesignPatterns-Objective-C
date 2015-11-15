//
//  PersonDirector.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "PersonDirector.h"

@interface PersonDirector ()

@property (strong, nonatomic) id<PersonBuilder> personBuilder;

@end

@implementation PersonDirector

- (instancetype)initWithPersonBuilder:(id<PersonBuilder>)personBuilder {
    self = [super init];
    if (self) {
        self.personBuilder = personBuilder;
    }
    return self;
}

- (void)builerson {
    [self.personBuilder buildHead];
    [self.personBuilder buildBody];
    [self.personBuilder buildArmLeft];
    [self.personBuilder buildArmRight];
    [self.personBuilder buildLegLeft];
    [self.personBuilder buildLegRight];
}

@end
