//
//  ZPPerson.m
//  static
//
//  Created by apple on 2016/12/15.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZPPerson.h"

@implementation ZPPerson

/**
 全局变量的作用域是整个项目，即其他类能通过extern关键字引用到这个全局变量。
 
 全局变量的缺陷：
 1、其他类引用全局变量之后可以随意更改这个它的值，这样使用不安全；
 2、如果另外的类中也定义了相同名称的全局变量，则在编译的时候会报重复定义的错误；
 如果想要克服上述的缺陷的话就要在全局变量的前面加上static关键字进行修饰，这样全局变量就变成了私有变量了，即只能在本类中使用，其他类是引用不到的。
 */
int age = 20;

@end
