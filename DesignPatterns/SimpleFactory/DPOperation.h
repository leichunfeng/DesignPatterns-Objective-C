//
//  DPOperation.h
//  DesignPatterns
//
//  Created by leichunfeng on 15/11/15.
//  Copyright © 2015年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 运算类型
typedef NS_ENUM(NSUInteger, DPOperationType) {
    /// 加法
    DPOperationTypeAdd,
    /// 减法
    DPOperationTypeSub,
    /// 乘法
    DPOperationTypeMul,
    /// 除法
    DPOperationTypeDiv,
};

/// 运算抽象类
@interface DPOperation : NSObject

/// 操作数 numberA
@property (nonatomic, assign) CGFloat numberA;

/// 操作数 numberB
@property (nonatomic, assign) CGFloat numberB;

/// 获取运算结果
///
/// @return 运算结果
- (CGFloat)getResult;

@end
