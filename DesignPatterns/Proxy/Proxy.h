//
//  Proxy.h
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GiveGift.h"
#import "SchoolGirl.h"

@interface Proxy : NSObject <GiveGift>

///  实例化方法
///
///  @param schoolGirl 被追求者
///
///  @return 实例对象
- (instancetype)initWithSchoolGirl:(SchoolGirl *)schoolGirl;

@end
