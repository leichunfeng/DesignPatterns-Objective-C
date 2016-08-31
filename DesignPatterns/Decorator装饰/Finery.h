//
//  Finery.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/23.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Person.h"

@interface Finery : Person

- (instancetype)initWithDecorate:(Person *)component;

@end

@interface Sneakers : Finery

@end