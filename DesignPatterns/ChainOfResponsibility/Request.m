//
//  Request.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Request.h"

@implementation Request
- (instancetype)initWithType:(RequestType)type content:(NSString *)content number:(NSInteger)number{
    self = [super init];
    if (self) {
        self.type = type;
        self.content = content;
        self.number = number;
    }
    return self;
}
@end
