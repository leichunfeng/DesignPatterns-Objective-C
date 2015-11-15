//
//  PersonFatBuilder.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "PersonFatBuilder.h"

@implementation PersonFatBuilder

- (void)buildHead {
    NSLog(@"建造胖子的头部");
}

- (void)buildBody {
    NSLog(@"建造胖子的身体");
}

- (void)buildArmLeft {
    NSLog(@"建造胖子的左手");
}

- (void)buildArmRight {
    NSLog(@"建造胖子的右手");
}

- (void)buildLegLeft {
    NSLog(@"建造胖子的左脚");
}

- (void)buildLegRight {
    NSLog(@"建造胖子的右脚");
}

@end
