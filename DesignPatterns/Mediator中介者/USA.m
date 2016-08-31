//
//  USA.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "USA.h"

@implementation USA
- (void)declare:(NSString *)message{
    [self.mediator declare:message country:self];
}
- (void)getMessage:(NSString *)message{
    NSLog(@"美国获得对方信息：%@",message);
}
@end
