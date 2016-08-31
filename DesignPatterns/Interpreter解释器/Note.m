//
//  Note.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/30.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Note.h"

@implementation Note

- (void)excute:(NSString *)key value:(double)value{
    NSString *note = @"";
    if ([key isEqualToString:@"C"]) {
        note = @"1";
    }else if ([key isEqualToString:@"D"]){
        note = @"2";
    }else if ([key isEqualToString:@"E"]){
        note = @"3";
    }else if ([key isEqualToString:@"F"]){
        note = @"4";
    }else if ([key isEqualToString:@"G"]){
        note = @"5";
    }else if ([key isEqualToString:@"A"]){
        note = @"6";
    }else if ([key isEqualToString:@"B"]){
        note = @"7";
    }
    NSLog(@"note:%@",note);
}



@end
