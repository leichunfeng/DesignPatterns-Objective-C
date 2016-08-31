//
//  ConcreteIterator.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"
#import "ConcreteAggregate.h"

@interface ConcreteIterator : NSObject <Iterator>

- (instancetype)initConcreteIterator:(ConcreteAggregate *)aggregate;

@end
