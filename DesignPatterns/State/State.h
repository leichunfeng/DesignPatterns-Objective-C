//
//  State.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Work;

@protocol State <NSObject>

///  写程序
///
///  @param work 工作对象
- (void)writeProgram:(Work *)work;

@end
