//
//  BakeChickenWingCommand.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "BakeChickenWingCommand.h"

@interface BakeChickenWingCommand ()
@property (nonatomic, strong) Barbecuer *receiver;
@end

@implementation BakeChickenWingCommand


- (instancetype)initBakeChickenWingCommand:(Barbecuer *)receiver{
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
