//
//  Country.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Country.h"

@implementation Country

- (instancetype)initCountryWithUnitedNations:(id<UnitedNations>)mediator{
    self = [super init];
    if (self) {
        self.mediator = mediator;
    }
    return self;
}
@end
