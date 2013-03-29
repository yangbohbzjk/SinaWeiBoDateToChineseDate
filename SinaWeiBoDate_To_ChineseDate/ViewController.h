//
//  ViewController.h
//  SinaWeiBoDate_To_ChineseDate
//
//  Created by David on 13-3-29.
//  Copyright (c) 2013年 David. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "SinaWeiboRequest.h"
#import "SinaWeibo.h"

@interface ViewController : UIViewController<SinaWeiboDelegate,SinaWeiboRequestDelegate>
{
    AppDelegate *MyAppDelegate;
}

@property (nonatomic, retain) NSMutableArray *SinaDate;

@end
