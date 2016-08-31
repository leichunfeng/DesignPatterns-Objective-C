//
//  Country.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UnitedNations.h"
@interface Country : NSObject

@property (nonatomic, strong) id<UnitedNations> mediator;

- (instancetype)initCountryWithUnitedNations:(id<UnitedNations>)mediator;

@end
