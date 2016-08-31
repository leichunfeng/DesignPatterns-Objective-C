//
//  Subject.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/23.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Subject.h"

@interface Subject ()

@property (nonatomic, strong) NSMutableArray<id<Observe>>* observes;

@end

@implementation Subject

- (NSMutableArray *)observes{
    if (!_observes) {
        _observes = @[].mutableCopy;
    }
    return _observes;
}

- (void)attach:(id<Observe>)observe{
    [self.observes addObject:observe];
}

- (void)notify{
    [self.observes enumerateObjectsUsingBlock:^(id<Observe>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj update];
    }];
}

@end
