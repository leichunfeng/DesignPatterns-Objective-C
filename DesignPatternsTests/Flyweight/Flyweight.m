//
//  Mediator.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/18.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ConcerteWebSite.h"
#import "WebSiteFactory.h"
#import "FlyweightUser.h"
@interface Flyweight : XCTestCase

@end

@implementation Flyweight

- (void)testMediator{
    WebSiteFactory *f = [[WebSiteFactory alloc] init];
    
    ConcerteWebSite *fx = [f getWebSiteCategory:@"产品展示"];
    [fx Use:[[FlyweightUser alloc] initUser:@"小菜"]];
    
    ConcerteWebSite *fy = [f getWebSiteCategory:@"产品展示"];
    [fy Use:[[FlyweightUser alloc] initUser:@"大鸟"]];
    
    ConcerteWebSite *fz = [f getWebSiteCategory:@"产品展示"];
    [fz Use:[[FlyweightUser alloc] initUser:@"娇娇"]];
    
    ConcerteWebSite *fl = [f getWebSiteCategory:@"博客"];
    [fl Use:[[FlyweightUser alloc] initUser:@"老顽童"]];
    
    ConcerteWebSite *fm = [f getWebSiteCategory:@"博客"];
    [fm Use:[[FlyweightUser alloc] initUser:@"桃谷六仙"]];
    
    ConcerteWebSite *fn = [f getWebSiteCategory:@"博客"];
    [fn Use:[[FlyweightUser alloc] initUser:@"南海鳄神"]];
    
    NSLog(@"网站分类总数为：%ld",(long)[f getWebSitrCount]);
}

@end
