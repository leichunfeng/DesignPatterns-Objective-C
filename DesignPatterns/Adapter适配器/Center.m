//
//  Center.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/24.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Center.h"

@interface Center ()
@property (nonatomic, copy) NSString *name;
@end

@implementation Center

- (instancetype)initWithName:(NSString *)name{
    self = [super initWithName:name];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)attack{
    NSLog(@"中锋：%@ 进攻",self.name);
}

- (void)defense{
    NSLog(@"中锋：%@ 防守",self.name);
}
@end
