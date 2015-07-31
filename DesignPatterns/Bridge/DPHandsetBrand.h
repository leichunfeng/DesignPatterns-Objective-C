//
//  DPHandsetBrand.h
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPHandsetSoft.h"

@interface DPHandsetBrand : NSObject

///  手机软件
@property (strong, nonatomic) id<DPHandsetSoft> handsetSoft;

///  运行
- (void)run;

@end
