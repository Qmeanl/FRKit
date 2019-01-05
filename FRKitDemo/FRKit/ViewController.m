//
//  ViewController.m
//  FRKit
//
//  Created by wenhua on 2018/11/21.
//  Copyright © 2018 黄小华. All rights reserved.
//

#import "ViewController.h"
#import "FRKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    [view showTipView:self.view retryAction:^(id userData) {
        NSLog(@"showTipView");
    }];
    view.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:view];
}


@end
