//
//  CashContext.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-22.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashSuper.h"

@interface CashContext : NSObject

///  初始化方法
///
///  @param cashSuper 实现CashSuper协议的对象
///
///  @return 实例对象
- (instancetype)initWithCashSuper:(id<CashSuper>)cashSuper;

///  获取计算结果
///
///  @return 计算结果
- (CGFloat)getResult:(CGFloat)money;

@end
