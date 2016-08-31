//
//  Scale.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/30.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Scale.h"

@implementation Scale

- (void)excute:(NSString *)key value:(double)value{
    NSString *scale = @"";
    switch ((int)value) {
        case 1:
            scale = @"低音";
            break;
        case 2:
            scale = @"中音";
            break;
        case 3:
            scale = @"高音";
            break;
        default:
            break;
    }
    NSLog(@"scale:%@",scale);
}

@end
