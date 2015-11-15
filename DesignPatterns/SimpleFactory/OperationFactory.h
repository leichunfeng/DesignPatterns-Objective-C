//
//  OperationFactory.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"

/// 简单工厂类
@interface OperationFactory : NSObject

/// 简单工厂方法，用于创建运算实例
///
/// @param operationType 运算类型
///
/// @return 运算实例
+ (Operation *)createOperation:(OperationType)operationType;

@end
