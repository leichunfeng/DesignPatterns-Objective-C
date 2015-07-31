//
//  DPOperationFactory.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPOperation.h"

///  运算类型
typedef NS_ENUM(NSUInteger, DPOperationType) {
    ///  加法
    DPOperationTypeAdd,
    ///  减法
    DPOperationTypeSub,
    ///  乘法
    DPOperationTypeMul,
    ///  除法
    DPOperationTypeDiv
};

@interface DPOperationFactory : NSObject

///  简单工厂方法，用于创建运算实例
///
///  @param operationType 运算类型
///
///  @return 运算实例
+ (id<DPOperation>)createOperation:(DPOperationType)operationType;

@end
