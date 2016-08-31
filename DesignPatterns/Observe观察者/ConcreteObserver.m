//
//  ConcreteObserver.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/23.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "ConcreteObserver.h"
#import "ConcreteSubject.h"
@interface ConcreteObserver ()

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *observeState;
@property (nonatomic, strong) ConcreteSubject *subject;

@end

@implementation ConcreteObserver

- (instancetype)initConcreteObserver:(ConcreteSubject *)subject name:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
        self.subject = subject;
    }
    return self;
}

- (void)update{
    self.observeState = [self.subject subjectState];
    NSLog(@"观察者%@的新状态是：%@",self.name,self.observeState);
}

@end
