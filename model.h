//
//  model.h
//  适配Demo
//
//  Created by xiaxiangquan on 15/2/10.
//  Copyright (c) 2015年 xiaxiangquan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface model : NSObject

@property (nonatomic, strong) NSString *icon;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *pic;


- (instancetype) initWithDict:(NSDictionary *)dict;
+ (instancetype) modelWithDict:(NSDictionary *)dict;


@end
