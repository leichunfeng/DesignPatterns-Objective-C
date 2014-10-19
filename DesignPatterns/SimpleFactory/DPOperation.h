//
//  DPOperation.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DPOperation <NSObject>

/**
 *  操作数numberA
 */
@property (nonatomic) CGFloat numberA;

/**
 *  操作数numberB
 */
@property (nonatomic) CGFloat numberB;

/**
 *  获取运算结果
 *
 *  @return 运算结果
 */
- (CGFloat)getResult;

@end
