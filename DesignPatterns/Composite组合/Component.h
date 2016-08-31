//
//  Component.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/26.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Component : NSObject

@property (nonatomic, copy) NSString *name;

- (instancetype)initWithName:(NSString *)name;

- (void)add:(Component *)c;
- (void)remove:(Component *)c;
- (void)display:(int)depth;

@end
