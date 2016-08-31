//
//  Translator.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/24.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "Translator.h"
#import "ForeignCenter.h"

@interface Translator ()
@property (nonatomic, strong) ForeignCenter *wjzf;
@end

@implementation Translator

//- (ForeignCenter *)wjzf{
//    if (!_wjzf) {
//        _wjzf = [[ForeignCenter alloc] init];
//    }
//    return _wjzf;
//}

- (instancetype)initWithName:(NSString *)name{
    self = [super initWithName:name];
    if (self) {
//        self.wjzf.name = name;
        self.wjzf = [[ForeignCenter alloc] initWithName:name];
    }
    return self;
}

- (void)attack{
    [self.wjzf jingong];
}

- (void)defense{
    [self.wjzf fangshou];
}

@end
