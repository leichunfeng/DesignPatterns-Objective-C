//
//  DPWork.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-27.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPState.h"

@interface DPWork : NSObject

///  当前工作状态
@property (strong, nonatomic) id <DPState> state;

///  `钟点`属性，状态转换的依据
@property (nonatomic) CGFloat hour;

///  `任务完成`属性，是否能下班的依据
@property (nonatomic) BOOL finished;

///  写程序
- (void)writeProgram;

@end
