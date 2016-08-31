//
//  BakeMuttonCommand.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "BakeMuttonCommand.h"

@interface BakeMuttonCommand ()
@property (nonatomic, strong) Barbecuer *receiver;
@end

@implementation BakeMuttonCommand


- (instancetype)initBakeMuttonCommand:(Barbecuer *)receiver{
    self = [super init];
    if (self) {
        self.receiver = receiver;
    }
    return self;
}

- (void)excuteCommand{
    [self.receiver bakeMutton];
}

@end
