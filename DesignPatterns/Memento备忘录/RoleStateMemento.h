//
//  RoleStateMemento.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/25.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  角色状态存储箱类
 */
@interface RoleStateMemento : NSObject

@property (nonatomic, assign) int vitality;
@property (nonatomic, assign) int attack;
@property (nonatomic, assign) int defense;

- (instancetype)initRoleStateMementoWithVitality:(int)vit attack:(int)atk defense:(int)def;

@end
