//
//  WebSite.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/18.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FlyweightUser;
@protocol WebSite <NSObject>
- (void)Use:(FlyweightUser *)user;
@end
