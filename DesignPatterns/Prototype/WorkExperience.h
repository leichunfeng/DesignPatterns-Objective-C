//
//  WorkExperience.h
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/20.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WorkExperience : NSObject <NSCopying>

///  时间区间
@property (strong, nonatomic) NSString *workDate;

///  公司
@property (strong, nonatomic) NSString *company;

@end
