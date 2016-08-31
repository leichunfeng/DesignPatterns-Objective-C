//
//  Request.h
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, RequestType) {
    RequestType_Leave,//请假
    RequestType_SalaryRaise,//加薪
};

//typedef NS_ENUM(NSUInteger, RequestContent) {
//    RequestContent_SalaryRaise,//加薪
//};

@interface Request : NSObject

- (instancetype)initWithType:(RequestType)type content:(NSString *)content number:(NSInteger)number;

@property (nonatomic, assign) NSInteger number;
@property (nonatomic, assign) RequestType type;
@property (nonatomic, copy) NSString *content;

//@property (nonatomic, assign) RequestContent content;
@end
