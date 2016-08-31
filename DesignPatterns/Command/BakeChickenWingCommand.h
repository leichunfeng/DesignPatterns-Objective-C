//
//  BakeChickenWingCommand.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
#import "Barbecuer.h"
@interface BakeChickenWingCommand : NSObject <Command>

- (instancetype)initBakeChickenWingCommand:(Barbecuer *)receiver;
@end
