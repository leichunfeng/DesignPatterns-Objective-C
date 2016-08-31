//
//  GeneralManager.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "GeneralManager.h"

@implementation GeneralManager

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

//override

- (void)requestApplications:(Request *)request{
    switch (request.type) {
        case RequestType_Leave:
            NSLog(@"%@:%@,数量%ld被批准",self.name,request.content,(long)request.number);
            break;
        case RequestType_SalaryRaise:
            if (request.number <= 500) {
                NSLog(@"%@:%@,数量%ld被批准",self.name,request.content,(long)request.number);
            }else{
                NSLog(@"%@:%@,数量%ld再说吧！",self.name,request.content,(long)request.number);
            }
            break;
        default:
            break;
    }
}

@end
