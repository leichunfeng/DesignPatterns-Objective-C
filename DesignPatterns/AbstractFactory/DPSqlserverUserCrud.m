//
//  DPUserCrudSqlserver.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPSqlserverUserCrud.h"

@implementation DPSqlserverUserCrud

- (void)insert:(DPUser *)user {
    NSLog(@"在SQL Server中给User表增加一条记录");
}

- (DPUser *)getUser:(NSInteger)userId {
    NSLog(@"在SQL Server中根据userId得到User表一条记录");
    return nil;
}

@end
