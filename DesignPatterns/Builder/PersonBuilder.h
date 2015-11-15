//
//  PersonBuilder.h
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonBuilder <NSObject>

///  建造头部
- (void)buildHead;

///  建造身体
- (void)buildBody;

///  建造左手
- (void)buildArmLeft;

///  建造右手
- (void)buildArmRight;

///  建造左脚
- (void)buildLegLeft;

///  建造右脚
- (void)buildLegRight;

@end
