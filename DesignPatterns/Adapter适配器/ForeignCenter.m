//
//  ForeignCenter.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/24.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "ForeignCenter.h"

@implementation ForeignCenter

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)jingong{
    NSLog(@"外籍中锋：%@ 进攻",self.name);
}

- (void)fangshou{
    NSLog(@"外籍中锋：%@ 防守",self.name);
}
@end
