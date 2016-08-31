//
//  User.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/18.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "FlyweightUser.h"

@interface FlyweightUser ()

@property (copy, nonatomic, readwrite) NSString *name;

@end

@implementation FlyweightUser

- (instancetype)initUser:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}
@end
