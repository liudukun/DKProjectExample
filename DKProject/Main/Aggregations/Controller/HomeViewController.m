//
//  HomeViewController.m
//  ZJHT_CarOwner
//
//  Created by liudukun on 16/6/15.
//  Copyright © 2016年 liudukun. All rights reserved.
//

#import "HomeViewController.h"
#import "MBProgressHUD.h"
#import "UIViewController+Base.h"

@implementation HomeViewController


-(void)viewDidLoad{
    [super viewDidLoad];
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    //NSLog(@"%@,%@",[UIApplication sharedApplication].windows,[UIApplication sharedApplication].keyWindow);
    
    
}


@end
