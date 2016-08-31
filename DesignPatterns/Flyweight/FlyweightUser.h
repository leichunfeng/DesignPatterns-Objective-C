//
//  User.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/18.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FlyweightUser : NSObject

@property (copy, nonatomic, readonly) NSString *name;

- (instancetype)initUser:(NSString *)name;

@end
