//
//  UINavigationController+Base.m
//  ZJHT_CarOwner
//
//  Created by liudukun on 16/6/16.
//  Copyright © 2016年 liudukun. All rights reserved.
//

#import "UINavigationController+Base.h"

@implementation UINavigationController (Base)

+ (void)load
{
    
    [UINavigationController aspect_hookSelector:@selector(viewWillAppear:)
                              withOptions:AspectPositionAfter
                               usingBlock:^(id<AspectInfo> aspectInfo) {
                                   if ([aspectInfo.instance isKindOfClass:[UINavigationController class]]) {
                                       UINavigationController * nc  = aspectInfo.instance;
                                       [nc setDefaultStyleWithInstance:nc];
                                       
                                       
                                   }
                                   
                               } error:NULL];
}

- (void)setDefaultStyleWithInstance:(UINavigationController*)nc{
    nc.navigationBar.barTintColor = [UIColor redColor];
    [nc.navigationBar setTitleTextAttributes:@{
                                               NSForegroundColorAttributeName:[UIColor whiteColor],
                                               NSFontAttributeName:[UIFont systemFontOfSize:20.f],
                                               
                                               }];
}


@end
