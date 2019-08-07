//
//  XLViewController.m
//  ModuleA
//
//  Created by xiaoli_dev on 08/07/2019.
//  Copyright (c) 2019 xiaoli_dev. All rights reserved.
//

#import "XLViewController.h"
#import <ModuleA/MAController.h>

@interface XLViewController ()
@property (nonatomic, strong) UIButton * maButton;
@end

@implementation XLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.title = @"TEST Module";
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitle:@"Go MAController" forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [button setBackgroundColor:[UIColor blueColor]];
    [button addTarget:self action:@selector(maButtonDidClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.maButton = button;
    [self.view addSubview:self.maButton];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self.maButton.frame = CGRectMake(20, self.topLayoutGuide.length + 50, self.view.frame.size.width - 40, 60);
}


- (void)maButtonDidClick
{
    MAController * maController = [[MAController alloc] init];
    [self.navigationController pushViewController:maController animated:YES];
}


@end
