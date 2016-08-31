//
//  Subject.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/23.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observe.h"

@interface Subject : NSObject

- (void)attach:(id<Observe>)observe;
- (void)notify;

@end
