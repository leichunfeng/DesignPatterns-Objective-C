//
//  DPCashRebate.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPCashSuper.h"

@interface DPCashRebate : NSObject <DPCashSuper>

///  初始化方法
///
///  @param moneyRebate 折扣率
///
///  @return 实例对象
- (instancetype)initWithMoneyRebate:(CGFloat)moneyRebate;

@end
