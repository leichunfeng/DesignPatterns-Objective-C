//
//  Failing.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/31.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Failing.h"

@implementation Failing

- (void)getManConclusion:(Man *)concreteElementA{
    NSLog(@"%@ %@时，闷头喝酒，谁也不用劝。",concreteElementA.class,self.class);
}

- (void)getWomanConclusion:(Woman *)concreteElementB{
    NSLog(@"%@ %@时，眼泪汪汪，谁也劝不了。",concreteElementB.class,self.class);
}

@end
