//
//  ObjectStructure.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/31.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VisitorPerson.h"
#import "Action.h"

@interface ObjectStructure : NSObject

- (void)attach:(id<VisitorPerson>)element;
- (void)detach:(id<VisitorPerson>)element;
- (void)display:(id<Action>)visitor;

@end
