//
//  UnitedNations.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Country;
@protocol UnitedNations <NSObject>

- (void)declare:(NSString *)message country:(Country *)country;

@end
