//
//  Aggregate.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

@protocol Aggregate <NSObject>

- (id<Iterator>)createIterator;

@end
