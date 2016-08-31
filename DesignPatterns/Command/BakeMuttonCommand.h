//
//  BakeMuttonCommand.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
#import "Barbecuer.h"
@interface BakeMuttonCommand : NSObject <Command>


- (instancetype)initBakeMuttonCommand:(Barbecuer *)receiver;

@end
