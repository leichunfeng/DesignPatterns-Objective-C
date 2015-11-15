//
//  Singleton.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/4.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+ (instancetype)sharedInstance {
    static Singleton *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

@end
