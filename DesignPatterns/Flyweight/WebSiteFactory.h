//
//  WebSiteFactory.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/18.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebSite.h"
@interface WebSiteFactory : NSObject
/**
 *  获得网站分类
 */
- (id<WebSite>)getWebSiteCategory:(NSString *)key;

/**
 *  获得网站分类总数
 */
- (NSInteger)getWebSitrCount;
@end
