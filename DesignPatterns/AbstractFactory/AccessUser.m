//
//  AccessUser.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "AccessUser.h"

@implementation AccessUser

- (void)insert:(User *)user {
    NSLog(@"在 Access 中给 User 表增加一条记录");
}

- (User *)getUser:(NSString *)userId {
    NSLog(@"在 Access 中根据 userId 得到 User 表一条记录");
    return nil;
}

@end
