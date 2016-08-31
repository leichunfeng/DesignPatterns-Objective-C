
//
//  Action.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/31.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Man.h"
#import "Woman.h"

@protocol Action <NSObject>

- (void)getManConclusion:(Man *)concreteElementA;

- (void)getWomanConclusion:(Woman *)concreteElementB;

@end
