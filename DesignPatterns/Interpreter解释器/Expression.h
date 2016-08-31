//
//  Expression.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/30.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayContext.h"
@interface Expression : NSObject

- (void)interpret:(PlayContext *)context;
- (void)excute:(NSString *)key value:(double)value;

@end
