//
//  HumanFactory.h
//  SLSimpleFactoryModeDemo
//
//  Created by dash on 14-8-11.
//  Copyright (c) 2014年 com.dash.Qjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Human;

@interface HumanFactory : NSObject

+ (Human *)humanWithHumanIdentifier:(NSString *)identifier;

@end
