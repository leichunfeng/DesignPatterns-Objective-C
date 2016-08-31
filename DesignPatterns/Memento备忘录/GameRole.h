//
//  GameRole.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/25.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RoleStateMemento.h"
@interface GameRole : NSObject
@property (nonatomic, assign) int vitality;
@property (nonatomic, assign) int attack;
@property (nonatomic, assign) int defense;

- (void)stateDisplay;

- (void)getInitState;

- (void)fight;

- (RoleStateMemento *)saveState;

- (void)recoveryState:(RoleStateMemento *)memento;

@end

