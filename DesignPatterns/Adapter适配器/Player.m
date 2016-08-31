//
//  Player.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/24.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Player.h"

@interface Player ()
@property (nonatomic, copy) NSString *name;
@end

@implementation Player

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)attack{
    
}

- (void)defense{
    
}

@end
