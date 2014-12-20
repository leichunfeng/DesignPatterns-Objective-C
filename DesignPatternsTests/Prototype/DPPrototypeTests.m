//
//  DPPrototypeTests.m
//  DesignPatterns
//
//  Created by leichunfeng on 14/12/19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DPResume.h"

@interface DPPrototypeTests : XCTestCase

@end

@implementation DPPrototypeTests

- (void)testPrototype_1 {
    DPResume *resume = [DPResume new];
    NSMutableArray *array = [NSMutableArray new];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume));
    [array addObject:resume];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume));
    [array removeObject:resume];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume));
}

- (void)testPrototype_2 {
    NSString *string = @"origion";
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)string));
    NSString *stringCopy = [string copy];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)stringCopy));
    NSMutableString *stringMutableCopy = [string mutableCopy];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)stringMutableCopy));
    [stringMutableCopy appendString:@"!!"];
}

- (void)testPrototype_3 {
    NSMutableString *string = [NSMutableString stringWithString:@"origion"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)string));
    NSString *stringCopy = [string copy];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)stringCopy));
    NSMutableString *mStringCopy = [string copy];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)mStringCopy));
    NSMutableString *stringMCopy = [string mutableCopy];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)stringMCopy));
    [string appendString:@"origion!"];
    [stringMCopy appendString:@"!!"];
}

- (void)testPrototype_4 {
    NSArray *array1 = [NSArray arrayWithObjects:@"a", @"b", @"c", nil];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)array1));
    NSArray *arrayCopy1 = [array1 copy];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)arrayCopy1));
    NSMutableArray *mArrayCopy1 = [array1 mutableCopy];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)mArrayCopy1));
    [mArrayCopy1 addObject:@"de"];
    [mArrayCopy1 removeObjectAtIndex:0];
}

- (void)testPrototype_5 {
    NSArray *mArray1 = [NSArray arrayWithObjects:[NSMutableString stringWithString:@"a"], @"b", @"c", nil];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)mArray1));
    NSArray *mArrayCopy2 = [mArray1 copy];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)mArrayCopy2));
    NSMutableArray *mArrayMCopy1 = [mArray1 mutableCopy];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)mArrayMCopy1));
    NSMutableString *testString = [mArray1 objectAtIndex:0];
    [testString appendString:@"tail"];
}

- (void)testPrototype_6 {
    NSArray *array = [NSArray arrayWithObjects:[NSMutableString stringWithString:@"first"], [NSString stringWithString:@"b"], @"c", nil];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)array));
    NSArray *deepCopyArray = [[NSArray alloc] initWithArray:array copyItems:YES];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)deepCopyArray));
    NSArray *trueDeepCopyArray = [NSKeyedUnarchiver unarchiveObjectWithData:[NSKeyedArchiver archivedDataWithRootObject:array]];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)trueDeepCopyArray));
    [[array objectAtIndex:0] appendString:@"sd"];
}

@end
