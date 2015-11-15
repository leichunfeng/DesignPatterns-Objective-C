//
//  Operation.h
//  DesignPatterns
//
//  Created by leichunfeng on 15/11/15.
//  Copyright © 2015年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 运算类型
typedef NS_ENUM(NSUInteger, OperationType) {
    /// 加法
    OperationTypeAdd,
    /// 减法
    OperationTypeSub,
    /// 乘法
    OperationTypeMul,
    /// 除法
    OperationTypeDiv,
};

/// 运算抽象类
@interface Operation : NSObject

/// 操作数 numberA
@property (nonatomic, assign) CGFloat numberA;

/// 操作数 numberB
@property (nonatomic, assign) CGFloat numberB;

/// 获取运算结果
///
/// @return 运算结果
- (CGFloat)getResult;

@end
