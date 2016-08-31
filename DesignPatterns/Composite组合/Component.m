//
//  Component.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/26.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Component.h"

@implementation Component

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)add:(Component *)c{
    
}

- (void)remove:(Component *)c{
    
}

- (void)display:(int)depth{
    
}

@end
