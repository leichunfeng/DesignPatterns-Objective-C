//
//  Guards.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/24.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Guards.h"

@interface Guards ()
@property (nonatomic, copy) NSString *name;
@end

@implementation Guards

- (instancetype)initWithName:(NSString *)name{
    self = [super initWithName:name];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)attack{
    NSLog(@"后卫：%@ 进攻",self.name);
}

- (void)defense{
    NSLog(@"后卫：%@ 防守",self.name);
}
@end
