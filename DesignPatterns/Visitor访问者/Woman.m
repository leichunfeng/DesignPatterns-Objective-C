//
//  Woman.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/31.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Woman.h"
#import "Action.h"

@implementation Woman

- (void)accept:(id<Action>)visitor{
    [visitor getManConclusion:self];
}

@end
