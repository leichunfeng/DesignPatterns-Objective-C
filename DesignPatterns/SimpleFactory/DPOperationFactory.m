//
//  DPOperationFactory.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPOperationFactory.h"
#import "DPOperationAdd.h"
#import "DPOperationSub.h"
#import "DPOperationMul.h"
#import "DPOperationDiv.h"

@implementation DPOperationFactory

+ (DPOperation *)createOperation:(DPOperationType)operationType {
    switch (operationType) {
        case DPOperationTypeAdd:
            return [[DPOperationAdd alloc] init];
        case DPOperationTypeSub:
            return [[DPOperationSub alloc] init];
        case DPOperationTypeMul:
            return [[DPOperationMul alloc] init];
        case DPOperationTypeDiv:
            return [[DPOperationDiv alloc] init];
        default:
            return nil;
    }
}

@end
