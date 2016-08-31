//
//  Expression.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/30.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Expression.h"

@implementation Expression

- (void)interpret:(PlayContext *)context{
    if (context.playText.length == 0) {
        return;
    }else{
        NSString *playKey = [context.playText substringWithRange:NSMakeRange(0, 1)];
        double playValue = [[context.playText substringWithRange:NSMakeRange(2, 1)] doubleValue];
        context.playText = [context.playText substringFromIndex:4];
        [self excute:playKey value:playValue];
    }
}

- (void)excute:(NSString *)key value:(double)value{
    
}

@end
