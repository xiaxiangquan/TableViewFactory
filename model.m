//
//  model.m
//  适配Demo
//
//  Created by xiaxiangquan on 15/2/10.
//  Copyright (c) 2015年 xiaxiangquan. All rights reserved.
//

#import "model.h"

@implementation model

- (instancetype) initWithDict:(NSDictionary *)dict{
    
    self = [super init];
    
    if (self) {
        // 使用KVC
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

/*
 工厂方法 
 */
+ (instancetype) modelWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

@end
