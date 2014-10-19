//
//  DPUserCrudAccess.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPAccessUserCrud.h"

@implementation DPAccessUserCrud

- (void)insert:(DPUser *)user {
    NSLog(@"在Access中给User表增加一条记录");
}

- (DPUser *)getUser:(NSInteger)userId {
    NSLog(@"在Access中根据userId得到User表一条记录");
    return nil;
}

@end
