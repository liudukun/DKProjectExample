//
//  UIViewController+Base.m
//  ZJHT_CarOwner
//
//  Created by liudukun on 16/6/16.
//  Copyright © 2016年 liudukun. All rights reserved.
//

#import "UIViewController+Base.h"

@implementation UIViewController (Base)


+ (void)load
{
    [UIViewController aspect_hookSelector:@selector(function)
                              withOptions:AspectPositionAfter
                               usingBlock:^(id<AspectInfo> aspectInfo) {
                                   NSString *className = NSStringFromClass([[aspectInfo instance] class]);
                                   if (![className isEqualToString:@"UIInputWindowController"]) {
                                       [self loadLeft];
                                   }
                                   
                               } error:NULL];
}

- (void)loadLeft{
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 35)];
    UIImageView *backImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 7, 11, 20)];
    backImageView.image = [UIImage imageNamed:@"back.png"];
    backImageView.userInteractionEnabled = YES;
    [backView addSubview:backImageView];
    UILabel *backLabel = [UILabel createLabelWithFrame:CGRectMake(11 + 5, 7, 40, 20) Font:kNavigationBackFontSize Text:@"返回" andLCR:0 andColor:KWhiteColor];
    [backView addSubview:backLabel];UIControl *back = [[UIControl alloc] initWithFrame:backView.bounds];[back addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];[backView addSubview:back];UIBarButtonItem *leftBtnItem = [[UIBarButtonItem alloc] initWithCustomView:backView];self.navigationItem.leftBarButtonItem = leftBtnItem;
}


@end
