//
//  ObjectStructure.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/31.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "ObjectStructure.h"

@interface ObjectStructure ()
@property (nonatomic, strong) NSMutableArray<id<VisitorPerson>> *elements;
@end


@implementation ObjectStructure

- (NSMutableArray *)elements{
    if (!_elements) {
        _elements = @[].mutableCopy;
    }
    return _elements;
}

- (void)attach:(id<VisitorPerson>)element{
    [self.elements addObject:element];
}

- (void)detach:(id<VisitorPerson>)element{
    [self.elements removeObject:element];
}

- (void)display:(id<Action>)visitor{
    [self.elements enumerateObjectsUsingBlock:^(id<VisitorPerson>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj accept:visitor];
    }];
}

@end
