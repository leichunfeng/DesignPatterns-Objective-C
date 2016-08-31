//
//  Forwards.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/24.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Forwards.h"

@interface Forwards ()
@property (nonatomic, copy) NSString *name;
@end

@implementation Forwards

- (instancetype)initWithName:(NSString *)name{
    self = [super initWithName:name];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)attack{
    NSLog(@"前锋：%@ 进攻",self.name);
}

- (void)defense{
    NSLog(@"前锋：%@ 防守",self.name);
}
@end
