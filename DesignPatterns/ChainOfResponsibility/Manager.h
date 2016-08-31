//
//  Manager.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Request.h"
@interface Manager : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) Manager *superior;

- (void)settingSuperior:(Manager *)superior;
- (void)requestApplications:(Request *)request;

@end
