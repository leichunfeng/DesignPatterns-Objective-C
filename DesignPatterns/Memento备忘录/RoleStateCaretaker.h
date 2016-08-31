//
//  RoleStateCaretaker.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/25.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RoleStateMemento.h"

/**
 *  角色状态管理者
 */
@interface RoleStateCaretaker : NSObject

@property (nonatomic, strong) RoleStateMemento *memento;

- (instancetype)initRoleStaeCaretakerWithMemento:(RoleStateMemento *)memento;

@end
