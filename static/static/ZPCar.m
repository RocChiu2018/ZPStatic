//
//  ZPCar.m
//  static
//
//  Created by apple on 2017/11/27.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ZPCar.h"

@implementation ZPCar

/**
 static用法1：
 用static关键字修饰的全局变量会变成私有变量，即只能在本类中使用，不能被其他类引用。
 */
static int age = 30;

@end
