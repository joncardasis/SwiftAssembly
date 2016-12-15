//
//  NSObject+ObjC_Class.m
//  SwiftARMAssembly
//
//  Created by Cardasis, Jonathan (J.) on 12/14/16.
//  Copyright © 2016 Jonathan Cardasis. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface ObjC_Class : NSObject

- (NSInteger) add:(NSInteger)a b:(NSInteger)b;

@end

extern NSInteger addTwo(NSInteger a, NSInteger b); //Assembly method

@implementation ObjC_Class


- (NSInteger) add:(NSInteger)a b:(NSInteger)b{
    //return a+b;
    return addTwo(a, b);
}

@end
