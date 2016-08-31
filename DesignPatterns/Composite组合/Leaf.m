//
//  Leaf.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/26.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Leaf.h"

@implementation Leaf

- (instancetype)initWithName:(NSString *)name{
    self = [super initWithName:name];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)add:(Component *)c{
    NSLog(@"Cannot add to a leaf");
}

- (void)remove:(Component *)c{
   NSLog(@"Cannot remove from a leaf");
}

- (void)display:(int)depth{
    for (int i = 0; i < depth; i++) {
        self.name = [NSString stringWithFormat:@"-%@",self.name];
    }
    NSLog(@"%@",self.name);
}

@end
