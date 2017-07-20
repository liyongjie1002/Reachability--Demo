//
//  ViewController.m
//  ReachabilityDemo
//
//  Created by liyongjie on 2017/7/20.
//  Copyright © 2017年 liyongjie. All rights reserved.
//

#import "ViewController.h"
#import <Reachability.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(netStatusChange:) name:kReachabilityChangedNotification object:nil];


}


-(void)netStatusChange:(NSNotification *)notification{

    Reachability *reachability = (Reachability *)notification.object;
    
    NetworkStatus status = [reachability currentReachabilityStatus];
    
    NSLog(@"%ld",status);
    
}


@end
