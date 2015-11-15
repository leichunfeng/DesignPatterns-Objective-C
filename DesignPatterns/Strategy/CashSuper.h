//
//  CashSuper.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CashSuper <NSObject>

///  收取现金
///
///  @param cash 原价
///
///  @return 当前价
- (CGFloat)acceptCash:(CGFloat)cash;

@end
