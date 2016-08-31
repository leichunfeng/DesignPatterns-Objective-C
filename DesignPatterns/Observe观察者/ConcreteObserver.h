//
//  ConcreteObserver.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/23.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observe.h"

@class ConcreteSubject;

@interface ConcreteObserver : NSObject <Observe>

- (instancetype)initConcreteObserver:(ConcreteSubject *)subject name:(NSString *)name;

@end
