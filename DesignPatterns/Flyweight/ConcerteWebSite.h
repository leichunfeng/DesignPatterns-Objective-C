//
//  ConcerteWebSite.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/18.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebSite.h"
@interface ConcerteWebSite : NSObject<WebSite>
- (instancetype)initConcerteWebSiteWithName:(NSString *)name;
@end
