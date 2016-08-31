//
//  Waiter.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
@interface Waiter : NSObject

- (void)setOrder:(id<Command>)command;
- (void)cancelOrder:(id<Command>)command;
- (void)notify;

@end
