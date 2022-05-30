//
//  XHTabbarViewController.m
//  AllEmbracing
//
//  Created by gexuhui on 2022/3/29.
//  Copyright © 2022 com.gexuhui.allembracing. All rights reserved.
//

#import "XHTabbarViewController.h"
//#import "XHViewController.h"
#import "XHNavigationViewController.h"
#import "XHHomeViewController.h"
#import "XHServiceViewController.h"
#import "XHShopViewController.h"
#import "XHMineViewController.h"

@interface XHTabbarViewController ()

@end

@implementation XHTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)addChildTabControllers{
    XHHomeViewController *vc1 = [[XHHomeViewController alloc] init];
    vc1.tabBarItem.title = @"tab1";
    vc1.title = @"VC1";
    XHNavigationViewController *nav1 = [[XHNavigationViewController alloc] initWithRootViewController:vc1];
    
    XHServiceViewController *vc2 = [[XHServiceViewController alloc] init];
    vc2.tabBarItem.title = @"tab2";
    vc2.title = @"VC2";
    XHNavigationViewController *nav2 = [[XHNavigationViewController alloc] initWithRootViewController:vc2];

    XHShopViewController *vc3 = [[XHShopViewController alloc] init];
    vc3.tabBarItem.title = @"tab3";
    vc3.title = @"VC3";
    XHNavigationViewController *nav3 = [[XHNavigationViewController alloc] initWithRootViewController:vc3];

    XHViewController *vc4 = [[XHViewController alloc] init];
    //XHMineViewController
    [XHMineViewController superclass];
    //XHMineViewController *vc4 = [[XHMineViewController alloc] init];
    vc4.tabBarItem.title = @"tab4";
    vc4.title = @"VC4";
    XHNavigationViewController *nav4 = [[XHNavigationViewController alloc] initWithRootViewController:vc4];
    
    [self addChildViewController:nav1];
    [self addChildViewController:nav2];
    [self addChildViewController:nav3];
    [self addChildViewController:nav4];
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
