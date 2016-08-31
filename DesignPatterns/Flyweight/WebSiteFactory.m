//
//  WebSiteFactory.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/18.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "WebSiteFactory.h"
#import "ConcerteWebSite.h"

@interface WebSiteFactory ()
@property (strong, nonatomic) NSMutableDictionary *dic;
@end
@implementation WebSiteFactory

- (NSMutableDictionary *)dic{
    if (!_dic) {
        _dic = [[NSMutableDictionary alloc] init];
    }
    return _dic;
}

- (id<WebSite>)getWebSiteCategory:(NSString *)key{
    if (![self.dic objectForKey:key]) {
        [self.dic setObject:[[ConcerteWebSite alloc] initConcerteWebSiteWithName:key] forKey:key];
    }
    return [self.dic objectForKey:key];
}


- (NSInteger)getWebSitrCount{
    return self.dic.allKeys.count;
}


@end
