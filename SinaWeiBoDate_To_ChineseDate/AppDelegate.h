//
//  AppDelegate.h
//  SinaWeiBoDate_To_ChineseDate
//
//  Created by David. on 13-3-29.
//  Copyright (c) 2013年 David. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SinaWeibo.h"
#import "SinaWeiboRequest.h"
@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate,SinaWeiboDelegate,SinaWeiboRequestDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) SinaWeibo *sinaweibo;
@end
