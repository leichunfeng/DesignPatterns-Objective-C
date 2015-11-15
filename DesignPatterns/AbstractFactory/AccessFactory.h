//
//  FactoryAccess.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IFactory.h"

/// 创建用于访问 Access 对象的工厂类
@interface AccessFactory : NSObject <IFactory>

@end
