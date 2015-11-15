//
//  CashReturn.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashSuper.h"

@interface CashReturn : NSObject <CashSuper>

///  初始化方法
///
///  @param moneyCondition 返利条件
///  @param moneyReturn    返利值
///
///  @return 实例对象
- (instancetype)initWithMoneyCondition:(CGFloat)moneyCondition moneyReturn:(CGFloat)moneyReturn;

@end
