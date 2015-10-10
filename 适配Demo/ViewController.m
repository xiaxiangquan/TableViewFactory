//
//  ViewController.m
//  适配Demo
//
//  Created by xiaxiangquan on 15/1/31.
//  Copyright (c) 2015年 xiaxiangquan. All rights reserved.
//


#import "ViewController.h"
#import "MyTableViewCell.h"
#import "model.h"
#import "AppDelegate.h"
#import "AppDelegate+ScreenRatio.h"


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    /*
    UIView *newView = [UIView new];
    [newView setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:newView];
    newView.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:newView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:20.0];
    [self.view addConstraint:constraint];
    constraint = [NSLayoutConstraint constraintWithItem:newView
                                              attribute:NSLayoutAttributeTrailing
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeTrailing
                                             multiplier:1.0f
                                               constant:-20];
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:newView
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1.0f
                                               constant:20];
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:newView
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:-20];
    [self.view addConstraint:constraint];
     */
    
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake1(10, 100, 100, 100)];
//    [self.view addSubview:view];
//    [view setBackgroundColor:[UIColor orangeColor]];
    
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    
}


 -(NSArray *)dataSource
{
    NSMutableArray *models = [NSMutableArray array];
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"9654c5b5efbcb1f.jpeg",@"icon", @"fasfs",@"name", @"text", @"text",@"pic", @"pic", nil];
    NSDictionary *dic2 = [NSDictionary dictionaryWithObjectsAndKeys:@"9654c5b5efbcb1f.jpeg",@"icon", @"text", @"text",@"pic", @"pic", nil];
    NSDictionary *dic3 = [NSDictionary dictionaryWithObjectsAndKeys:@"9654c5b5efbcb1f.jpeg",@"icon", @"text", @"text",@"9654c5b5efbcb1f.jpeg", @"pic", nil];
    model *weibomodel = [model modelWithDict:dic];
    model *weibomodel2 = [model modelWithDict:dic2];
    model *weibomodel3 = [model modelWithDict:dic3];
    [models addObject:weibomodel];
    [models addObject:weibomodel2];
    [models addObject:weibomodel3];
    return models;
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *indentifier = @"cell";
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    if (cell == nil) {
        cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indentifier];
    }
    cell.modelData = self.dataSource [indexPath.row];
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
