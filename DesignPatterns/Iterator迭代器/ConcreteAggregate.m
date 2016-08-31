//
//  ConcreteAggregate.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "ConcreteAggregate.h"
#import "Iterator.h"
#import "ConcreteIterator.h"

@implementation ConcreteAggregate

/**
 *  懒加载
 */
- (NSMutableArray *)items{
    if (!_items) {
        _items = @[].mutableCopy;
    }
    return _items;
}

- (void)addObjectWithName:(NSString *)name index:(NSInteger)index{
    [self.items insertObject:name atIndex:index];
}

- (id<Iterator>)createIterator{
    return [[ConcreteIterator alloc] initConcreteIterator:self];
}

- (NSInteger)count{
    return self.items.count;
}



@end
