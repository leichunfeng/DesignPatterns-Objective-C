//
//  Resume.h
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WorkExperience.h"

///  简历抽象类，有两个具体子类
///  ResumeShallowCopy 子类实现浅拷贝
///  ResumeDeepCopy 子类实现深拷贝
@interface Resume : NSObject <NSCopying>

///  姓名
@property (strong, nonatomic) NSString *name;

///  性别
@property (strong, nonatomic) NSString *sex;

///  年龄
@property (strong, nonatomic) NSString *age;

///  工作经历
@property (strong, nonatomic) WorkExperience *workExperience;

///  初始化方法
///
///  @param departmentName 姓名
///
///  @return 实例对象
- (instancetype)initWithName:(NSString *)name;

///  设置个人信息
///
///  @param sex 性别
///  @param age 年龄
- (void)setPersonalInfoWithSex:(NSString *)sex age:(NSString *)age;

///  设置工作经历
///
///  @param workDate 时间区间
///  @param company  公司
- (void)setWorkExperienceWithWorkDate:(NSString *)workDate company:(NSString *)company;

///  显示
- (void)display;

@end
