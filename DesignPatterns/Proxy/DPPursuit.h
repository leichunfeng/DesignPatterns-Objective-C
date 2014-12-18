//
//  DPPursuit.h
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPGiveGift.h"
#import "DPSchoolGirl.h"

@interface DPPursuit : NSObject <DPGiveGift>

///  实例化方法
///
///  @param schoolGirl 被追求者
///
///  @return 实例对象
- (instancetype)initWithSchoolGirl:(DPSchoolGirl *)schoolGirl;

@end
