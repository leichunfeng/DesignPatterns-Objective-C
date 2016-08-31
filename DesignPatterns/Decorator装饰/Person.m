//
//  Person.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/23.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Person.h"

@interface Person ()

@property (nonatomic, copy) NSString *name;

@end

@implementation Person

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)show{
    NSLog(@"装饰者：%@",self.name);
}

@end
