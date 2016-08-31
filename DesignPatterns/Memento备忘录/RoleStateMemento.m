//
//  RoleStateMemento.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/25.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "RoleStateMemento.h"

@implementation RoleStateMemento


- (instancetype)initRoleStateMementoWithVitality:(int)vit attack:(int)atk defense:(int)def{
    self = [super init];
    if (self) {
        self.vitality = vit;
        self.attack = atk;
        self.defense = def;
    }
    return self;
}
@end
