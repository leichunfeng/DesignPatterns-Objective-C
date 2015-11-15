//
//  ILeiFengFactory.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ILeiFeng.h"

/// 雷锋工厂接口
@protocol ILeiFengFactory <NSObject>

/// 工厂方法，用于创建雷锋实例
///
/// @return 雷锋实例
- (id<ILeiFeng>)createLeiFeng;

@end
