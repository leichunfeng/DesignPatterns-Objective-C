//
//  ConcerteWebSite.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/18.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "ConcerteWebSite.h"
#import "FlyweightUser.h"
@interface ConcerteWebSite ()
@property (copy, nonatomic) NSString *name;
@end

@implementation ConcerteWebSite

- (instancetype)initConcerteWebSiteWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)Use:(FlyweightUser *)user{
    NSLog(@"网站分类：%@ 用户：%@",self.name,user.name);
}

@end
