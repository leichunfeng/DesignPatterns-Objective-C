//
//  GameRole.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/25.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "GameRole.h"

@implementation GameRole

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self getInitState];
    }
    return self;
}

- (void)stateDisplay{
    NSLog(@"角色当前状态");
    NSLog(@"体力：%d 攻击力：%d 防御力：%d",self.vitality,self.attack,self.defense);
}

- (void)getInitState{
    self.vitality = 100;
    self.attack = 100;
    self.defense = 100;
}

- (void)fight{
    self.vitality = 0;
    self.attack = 0;
    self.defense = 0;
}

- (RoleStateMemento *)saveState{
    return [[RoleStateMemento alloc] initRoleStateMementoWithVitality:self.vitality attack:self.attack defense:self.defense];
}

- (void)recoveryState:(RoleStateMemento *)memento{
    self.vitality = memento.vitality;
    self.attack = memento.attack;
    self.defense = memento.defense;
}
@end
