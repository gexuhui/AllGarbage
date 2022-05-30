//
//  XHHomeViewController.m
//  AllEmbracing
//
//  Created by gexuhui on 2022/3/31.
//  Copyright © 2022 com.gexuhui.allembracing. All rights reserved.
//

#import "XHHomeViewController.h"
#import "XHTimerTestViewController.h"

@interface XHHomeViewController ()<UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong) NSArray *dataList;

@end

@implementation XHHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //NSLog(@"Home");
    //self.title = @"Home";
    
    CGRect rect = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    UITableView *tableView = [[UITableView alloc] initWithFrame:rect style:UITableViewStylePlain];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    //self.navigationController.hidesBarsOnTap = YES;
    //self.tabBarControll
    
    //self.dataList = @[];
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"XHTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];//NSInteger -> long
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@", indexPath);
    if (indexPath.row == 0) {
        XHTimerTestViewController *vc = [[XHTimerTestViewController alloc] init];
        //self.navigationController.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//TaggedPointer类型在iOS和MacOS中标志位是不同的iOS为最高位而MacOS为最低位
- (void)taggedPointerTest {
    
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
