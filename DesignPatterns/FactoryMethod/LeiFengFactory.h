//
//  LeiFengFactory.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeiFeng.h"

/// 雷锋工厂接口
@protocol LeiFengFactory <NSObject>

/// 工厂方法，用于创建雷锋实例
///
/// @return 雷锋实例
- (id<LeiFeng>)createLeiFeng;

@end
