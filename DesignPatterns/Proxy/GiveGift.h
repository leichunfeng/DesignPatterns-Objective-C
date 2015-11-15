//
//  GiveGift.h
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GiveGift <NSObject>

///  送洋娃娃
- (void)giveDolls;

///  送鲜花
- (void)giveFlowers;

///  送巧克力
- (void)giveChocolate;

@end
