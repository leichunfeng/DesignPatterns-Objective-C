//
//  TestPaper.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "TestPaper.h"

@implementation TestPaper

- (void)testQuestion1 {
    NSLog(@"问题：杨过得到，后来给了郭靖，炼成倚天剑、屠龙刀的玄铁可能是[ ]：a.球磨铸铁 b.马口铁 c.高速合金钢 d.碳素纤维");
    NSLog(@"答案：%@", [self answer1]);
}

- (NSString *)answer1 {
    return nil;
}

- (void)testQuestion2 {
    NSLog(@"问题：杨过、程英、陆无双铲除了情花，造成[ ]：a.使这种植物不再害人 b.使一种珍稀物种灭绝 c.破坏了那个生物圈的生态平衡 d.造成该地区沙漠化");
    NSLog(@"答案：%@", [self answer2]);
}

- (NSString *)answer2 {
    return nil;
}

- (void)testQuestion3 {
    NSLog(@"问题：蓝凤凰致使华山师徒、桃谷六仙呕吐不止，如果你是大夫，会给他们开什么药[ ]：a.阿司匹林 b.牛黄解毒片 c.氟哌酸 d.让他们喝大量的生牛奶 e.以上全不对");
    NSLog(@"答案：%@", [self answer3]);
}

- (NSString *)answer3 {
    return nil;
}

@end
