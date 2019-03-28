//
//  ViewController.m
//  static
//
//  Created by apple on 2016/12/15.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self test];
    
//    [self test1];
    
    [self test2];
}

- (void)test
{
    /**
     在其他类中定义的全局变量在本类中是不能引用到的，除非在本类中引用之前加上"extern"关键字。加上关键字之后系统首先会在本类中寻找这个全局变量，如果找不到的话会在其他类中继续寻找，直到找到为止。找到之后会把这个全局变量引用到本类中进行使用。除此之外，还可以在本类中修改引用到的全局变量的值；
     下面代码的意思是，系统先会在本类中寻找全局变量age，在本类中找不到之后会在其他类中继续寻找，ZPCar类中的全局变量age被static关键字修饰了，由全局变量变为了私有变量，所以不能被其他类引用了，然后系统会继续寻找，ZPPerson类中的全局变量没有被static关键字修饰，能够被其他类引用，所以ZPPerson类中的age会被引用到本类中。
     */
    extern int age;
    age = 40;  //修改被引用的全局变量
    NSLog(@"age = %d", age);
}

- (void)test1
{
    for (int i = 0; i < 3; i++)
    {
        int a = 0;
        
        a++;
        
        NSLog(@"a = %d", a);
    }
}

- (void)test2
{
    /**
     static用法2：
     用来修饰局部变量。
     
     被static关键字修饰过的局部变量会产生以下的变化：
     1、被修饰过的局部变量在程序运行以后只会初始化一次；
     2、被修饰过的局部变量在程序运行以后只会有一份内存空间；
     3、被修饰过的局部变量跟被修饰以前的作用域一样，该局部变量只会在它所在的方法里面起作用，出了这个方法就不起作用了。但是经过修饰的局部变量会改变之前没有经过修饰的局部变量的生命周期，未经修饰的局部变量的生命周期只限于其所在的方法内，一旦出了这个方法，此局部变量所对应的内存空间就会被系统销毁。经过修饰的局部变量的生命周期与所在的类的生命周期相始终，即出了这个方法，此局部变量所对应的内存空间也不会被系统销毁，而是等所在的类被销毁了，此局部变量才会被销毁。
     */
    for (int i = 0; i < 3; i++)
    {
        static int a = 0;
        
        a++;
        
        NSLog(@"a = %d", a);
    }
}

@end
