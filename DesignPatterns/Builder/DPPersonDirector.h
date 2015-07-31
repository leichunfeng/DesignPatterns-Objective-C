//
//  DPPersonDirector.h
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPPersonBuilder.h"

@interface DPPersonDirector : NSObject

///  实例化方法
///
///  @param personBuilder 建造者
///
///  @return 指挥者
- (instancetype)initWithPersonBuilder:(id<DPPersonBuilder>)personBuilder;

///  建造小人
- (void)buildPerson;

@end
