//
//  ConcreteAggregate.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Aggregate.h"

@interface ConcreteAggregate : NSObject <Aggregate>

@property (nonatomic, strong) NSMutableArray<NSString *> *items;
@property (nonatomic, assign, readonly) NSInteger count;

- (void)addObjectWithName:(NSString *)name index:(NSInteger)index;

@end
