//
//  CommonManager.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "CommonManager.h"

@implementation CommonManager

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

//override

- (void)requestApplications:(Request *)request{
    if (request.type == RequestType_Leave && request.number <= 2) {
        NSLog(@"%@:%@,数量%ld被批准",self.name,request.content,(long)request.number);
    }else{
        if (self.superior) {
            [self.superior requestApplications:request];
        }
    }
}

@end
