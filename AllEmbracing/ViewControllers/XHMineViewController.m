//
//  XHMineViewController.m
//  AllEmbracing
//
//  Created by gexuhui on 2022/3/31.
//  Copyright © 2022 com.gexuhui.allembracing. All rights reserved.
//

#import "XHMineViewController.h"

@interface XHMineViewController ()

@end

@implementation XHMineViewController

//第一次初始化这个类之前被调用，可以用它来初始化一些静态变量
//在创建子类的时候，子类会去调用父类的+initialize方法
//initialize方法的调用时机，当向该类发送第一个消息（一般是类消息首先调用，常见的是alloc）的时候，先调用类中的，再调用类别中的（类别中如果有重写）
//如果该类只是引用，没有调用，则不会执行initialize方法。
//如果子类有重写initialize，则在init之前会调用自己的initialize；
//如果没有的话就调用父类的initialize(这时候是子类son调用的)

+(void)initialize{
    NSLog(@"%s", __func__);
    NSLog(@"Mine-initialize!");
    //不需要调用super
}

//文件被程序装载时调用
//只要是在Compile Sources中出现的文件总是会被装载，与这个类是否被用到无关
//因此load方法总是在main函数之前调用
+(void)load{
    //不需要调用super
    NSLog(@"%s", __func__);
    NSLog(@"Mine-load!");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
