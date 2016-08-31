
//
//  RoleStateCaretaker.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/25.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "RoleStateCaretaker.h"


@implementation RoleStateCaretaker


- (instancetype)initRoleStaeCaretakerWithMemento:(RoleStateMemento *)memento{
    self = [super init];
    if (self) {
        self.memento = memento;
    }
    return self;
}
@end
