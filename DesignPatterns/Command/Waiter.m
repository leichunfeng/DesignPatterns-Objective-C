//
//  Waiter.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Waiter.h"

@interface Waiter ()
@property (nonatomic, strong) NSMutableArray<id<Command>> *orders;

@end

@implementation Waiter

- (NSMutableArray *)orders{
    if (!_orders) {
        _orders = @[].mutableCopy;
    }
    return _orders;
}

- (void)setOrder:(id<Command>)command{
    
    if ([command isKindOfClass:[NSClassFromString(@"BakeChickenWingCommand") class]]) {
        NSLog(@"增加订单：烤鸡翅！-^-...-^- 服务员：鸡翅没有了，请点别的烧烤");
    }else{
        [self.orders addObject:command];
        if ([command isKindOfClass:[NSClassFromString(@"BakeChickenWingCommand") class]]) {
            NSLog(@"增加订单：烤鸡翅！");
        }else if([command isKindOfClass:[NSClassFromString(@"BakeMuttonCommand") class]]){
            NSLog(@"增加订单：烤羊肉串！");
        }
    }
}


- (void)cancelOrder:(id<Command>)command{
    [self.orders removeObject:command];
}

- (void)notify{
    [self.orders enumerateObjectsUsingBlock:^(id<Command>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj excuteCommand];
    }];
}

@end
