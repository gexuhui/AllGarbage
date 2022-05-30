//
//  XHTimerTestViewController.m
//  AllEmbracing
//
//  Created by gexuhui on 2022/4/7.
//  Copyright © 2022 com.gexuhui.allembracing. All rights reserved.
//

#import "XHTimerTestViewController.h"

@interface XHTimerTestViewController ()

@property(nonatomic, strong)NSTimer *timer;

@end

@implementation XHTimerTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createUI];
    [self createUI2];
    
    [self startTimer];
    // Do any additional setup after loading the view.
}

-(void)createUI{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"暂停" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    btn.frame = CGRectMake(100, 200, 100, 60);
    [btn addTarget:self action:@selector(suspendTimer) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)createUI2{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"开始" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    btn.frame = CGRectMake(100, 300, 100, 60);
    [btn addTarget:self action:@selector(restartTimer) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)restartTimer{
    [self startTimer];
}

-(void)suspendTimer{
    self.timer.fireDate = [NSDate distantFuture];
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [self cancelTimer];
}

-(void)startTimer{
    [self cancelTimer];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(didChange) userInfo:nil repeats:NO];
}

-(void)cancelTimer{
    if(self.timer){
        [self.timer invalidate];
        self.timer = nil;
    }
}

-(void)didChange{
    NSLog(@"%@", [NSDate date]);
    [self startTimer];
}

- (void)dealloc {
    NSLog(@"%s", __func__);
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
