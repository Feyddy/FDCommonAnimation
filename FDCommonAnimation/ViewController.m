//
//  ViewController.m
//  FDCommonAnimation
//
//  Created by 徐忠林 on 12/01/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import "ViewController.h"
#import "FDCommonAnimationTool.h"

@interface ViewController ()
{
    UIView *myView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    myView = [[UIView alloc] initWithFrame:CGRectMake(30, 80, 200, 200)];
    myView.backgroundColor = [UIColor orangeColor];

    
    [self.view addSubview:myView];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 300, 50, 50)];

    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnAction {
     [FDCommonAnimationTool animationFlipFromBottom:myView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
