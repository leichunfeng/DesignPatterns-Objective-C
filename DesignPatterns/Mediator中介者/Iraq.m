//
//  Iraq.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Iraq.h"

@implementation Iraq
- (void)declare:(NSString *)message{
    [self.mediator declare:message country:self];
}
- (void)getMessage:(NSString *)message{
    NSLog(@"伊拉克获得对方信息：%@",message);
}
@end
