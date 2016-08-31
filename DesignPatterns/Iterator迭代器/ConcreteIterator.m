//
//  ConcreteIterator.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "ConcreteIterator.h"

@interface ConcreteIterator ()

@property (nonatomic, strong) ConcreteAggregate *aggregate;
@property (nonatomic, assign) NSInteger current;

@end

@implementation ConcreteIterator

- (instancetype)initConcreteIterator:(ConcreteAggregate *)aggregate{
    self = [super init];
    if (self) {
        self.aggregate = aggregate;
    }
    return self;
}

- (id)first{
    return self.aggregate.items[0];
}

- (id)next {
    NSString *name = @"";
    self.current++;
    if (self.current < self.aggregate.count) {
        name = self.aggregate.items[self.current];
    }
    return name;
}

- (BOOL)isDone{
    return self.current >= self.aggregate.count ? YES : NO;
}

- (id)currentItem{
    return self.aggregate.items[self.current];
}

@end
