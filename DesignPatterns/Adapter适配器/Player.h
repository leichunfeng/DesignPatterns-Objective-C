//
//  Player.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/24.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

- (instancetype)initWithName:(NSString *)name;

- (void)attack;
- (void)defense;

@end
