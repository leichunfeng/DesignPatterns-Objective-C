//
//  Composite.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/26.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Composite.h"

@interface Composite ()
@property (nonatomic, strong) NSMutableArray<Component *> *children;
@end

@implementation Composite

- (NSMutableArray *)children{
    if (!_children) {
        _children = @[].mutableCopy;
    }
    return _children;
}

- (instancetype)initCompositeWithName:(NSString *)name{
    self = [super initWithName:name];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)add:(Component *)c{
    [self.children addObject:c];
}

- (void)remove:(Component *)c{
    [self.children removeObject:c];
}

- (void)display:(int)depth{
    for (int i = 0; i < depth; i++) {
        self.name = [NSString stringWithFormat:@"-%@",self.name];
    }
    NSLog(@"%@",self.name);
    
    [self.children enumerateObjectsUsingBlock:^(Component * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj display:depth + 2];
    }];
}

@end
