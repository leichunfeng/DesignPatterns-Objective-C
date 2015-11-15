//
//  SQLServerUser.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUser.h"

/// 用于访问 SQL Server 中的用户
@interface SQLServerUser : NSObject <IUser>

@end
