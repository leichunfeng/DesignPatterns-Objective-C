//
//  Man.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/31.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Man.h"
#import "Action.h"

@implementation Man

- (void)accept:(id<Action>)visitor{
    [visitor getManConclusion:self];
}

@end
