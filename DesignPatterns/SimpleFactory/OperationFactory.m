//
//  OperationFactory.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "OperationFactory.h"
#import "OperationAdd.h"
#import "OperationSub.h"
#import "OperationMul.h"
#import "OperationDiv.h"

@implementation OperationFactory

+ (Operation *)createOperation:(OperationType)operationType {
    switch (operationType) {
        case OperationTypeAdd:
            return [[OperationAdd alloc] init];
        case OperationTypeSub:
            return [[OperationSub alloc] init];
        case OperationTypeMul:
            return [[OperationMul alloc] init];
        case OperationTypeDiv:
            return [[OperationDiv alloc] init];
        default:
            return nil;
    }
}

@end
