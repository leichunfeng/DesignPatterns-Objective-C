//
//  TestPaper.h
//  DesignPatterns
//
//  Created by leichunfeng on 14/11/2.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestPaper : NSObject

///  试题1
- (void)testQuestion1;

///  答案1
///
///  @return 答案1
- (NSString *)answer1;

///  试题2
- (void)testQuestion2;

///  答案2
///
///  @return 答案2
- (NSString *)answer2;

///  试题3
- (void)testQuestion3;

///  答案3
///
///  @return 答案3
- (NSString *)answer3;

@end
