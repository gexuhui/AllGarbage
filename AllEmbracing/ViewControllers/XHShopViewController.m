//
//  XHShopViewController.m
//  AllEmbracing
//
//  Created by gexuhui on 2022/3/31.
//  Copyright © 2022 com.gexuhui.allembracing. All rights reserved.
//

#import "XHShopViewController.h"

@interface XHShopViewController ()

@end

@implementation XHShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Shop";
    
    self.navigationController.hidesBarsOnSwipe = YES;
    
    self.view.backgroundColor = [UIColor yellowColor];//push hide动画 + 背景色
    
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
