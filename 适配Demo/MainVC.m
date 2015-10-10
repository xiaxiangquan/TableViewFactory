//
//  MainVC.m
//  适配Demo
//
//  Created by xiaxiangquan on 15/2/12.
//  Copyright (c) 2015年 xiaxiangquan. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake1(0, 80, self.view.bounds.size.width, 100)];
    [self.view addSubview:view];
    [view setBackgroundColor:[UIColor orangeColor]];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake1(10, view.frame.size.height + 80 + 15, self.view.bounds.size.width - 20, 44)];
    [btn setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:btn];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
