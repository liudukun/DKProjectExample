//
//  UINavigationController+Base.h
//  ZJHT_CarOwner
//
//  Created by liudukun on 16/6/16.
//  Copyright © 2016年 liudukun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (Base)

/**
 *  @brief 还原默认ViewController样式
 *
 *  @param instance 需要还原样式的VC
 *
 */
- (void)setDefaultStyleWithInstance:(UINavigationController*)nc;


@end
