//
//  Amativeness.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/31.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Amativeness.h"

@implementation Amativeness

- (void)getManConclusion:(Man *)concreteElementA{
    NSLog(@"%@ %@时，凡是不懂也要装懂。",concreteElementA.class,self.class);
}

- (void)getWomanConclusion:(Woman *)concreteElementB{
    NSLog(@"%@ %@时，凡是懂也装作不懂。",concreteElementB.class,self.class);
}

@end
