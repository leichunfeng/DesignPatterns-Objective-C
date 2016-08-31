//
//  Person.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/23.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Component <NSObject>

- (void)show;

@end


@interface Person : NSObject <Component>

- (instancetype)initWithName:(NSString *)name;

@end
