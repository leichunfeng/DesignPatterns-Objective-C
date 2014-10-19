//
//  DPLeiFengFactory.h
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPLeiFeng.h"

@protocol DPLeiFengFactory <NSObject>

- (id <DPLeiFeng>)createLeiFeng;

@end
