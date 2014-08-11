//
//  HumanFactory.m
//  SLSimpleFactoryModeDemo
//
//  Created by dash on 14-8-11.
//  Copyright (c) 2014年 com.dash.Qjie. All rights reserved.
//

#import "HumanFactory.h"

#import "Human.h"
#import "Teacher.h"
#import "Student.h"

@implementation HumanFactory

+ (Human *)humanWithHumanIdentifier:(NSString *)identifier
{
    if ([identifier isEqualToString:@"student"]) {
        return [[Student alloc] init];
    } else {
        return [[Teacher alloc] init];
    }
}

@end
