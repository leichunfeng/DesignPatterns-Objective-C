//
//  Manager.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (void)settingSuperior:(Manager *)superior{
    self.superior = superior;
}

- (void)requestApplications:(Request *)request{
    
}

@end
