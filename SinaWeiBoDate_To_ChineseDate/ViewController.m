//
//  ViewController.m
//  SinaWeiBoDate_To_ChineseDate
//
//  Created by David. on 13-3-29.
//  Copyright (c) 2013年 David. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+SinaDateToChinaDate.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize SinaDate = _SinaDate;

-(void)viewWillAppear:(BOOL)animated
{

    MyAppDelegate.sinaweibo.delegate = self;
}
- (void)viewDidLoad
{    MyAppDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;

    [super viewDidLoad];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"start login" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(login:) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(80, 80, 90, 90)];
    [self.view addSubview:button];

}

//clicked button
- (void)login:(UIButton *)sender
{
    [MyAppDelegate.sinaweibo logIn];
    NSLog(@"login");
}

-(void)sinaweiboDidLogIn:(SinaWeibo *)sinaweibo
{
    //send request of SinaWeiBo
    [MyAppDelegate.sinaweibo requestWithURL:@"statuses/user_timeline.json" params:[NSMutableDictionary dictionaryWithObject:@"北京科博会" forKey:@"screen_name"] httpMethod:@"GET" delegate:self];
    
    NSLog(@"sdflk");
}

-(void)request:(SinaWeiboRequest *)request didFinishLoadingWithResult:(id)result
{
    if ([request.url hasSuffix:@"statuses/user_timeline.json"]) {
        for (NSDictionary *dic in [result objectForKey:@"statuses"])
        {
            [self.SinaDate addObject:[self SinaDateToChinaDate:[dic objectForKey:@"created_at"]]];
            NSLog(@"date:%@",self.SinaDate);

        }
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
