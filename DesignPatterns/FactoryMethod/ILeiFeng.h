//
//  ILeiFeng.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 雷锋接口
@protocol ILeiFeng <NSObject>

/// 扫地
- (void)sweep;

/// 洗衣
- (void)wash;

/// 买米
- (void)buyRice;

@end
