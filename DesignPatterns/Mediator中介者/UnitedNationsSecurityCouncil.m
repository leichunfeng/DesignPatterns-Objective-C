//
//  UnitedNationsSecurityCouncil.m
//  DesignPatterns
//
//  Created by RenPeng on 16/8/29.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "UnitedNationsSecurityCouncil.h"
#import "Country.h"
#import "USA.h"
#import "Iraq.h"

@implementation UnitedNationsSecurityCouncil

- (void)declare:(NSString *)message country:(Country *)country{
    if ([country isKindOfClass:[USA class]]) {
        [[[Iraq alloc] initCountryWithUnitedNations:self] getMessage:message];
    }else if ([country isKindOfClass:[Iraq class]]){
        [[[USA alloc] initCountryWithUnitedNations:self] getMessage:message];
    }
}

@end
