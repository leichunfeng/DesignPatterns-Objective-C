//
//  Success.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/31.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Success.h"

@implementation Success

- (void)getManConclusion:(Man *)concreteElementA{
    NSLog(@"%@ %@时，背后多半有一个伟大的女人。",concreteElementA.class,self.class);
}

- (void)getWomanConclusion:(Woman *)concreteElementB{
    NSLog(@"%@ %@时，背后多半有一个不成功的男人。",concreteElementB.class,self.class);
}

@end
