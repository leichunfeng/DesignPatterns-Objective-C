//
//  HandsetBrand.h
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HandsetSoft.h"

@interface HandsetBrand : NSObject

///  手机软件
@property (strong, nonatomic) id<HandsetSoft> handsetSoft;

///  运行
- (void)run;

@end
