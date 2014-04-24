//
//  ViewController.m
//  GLTest1-1
//
//  Created by s.k on 2013/03/22.
//  Copyright (c) 2013年 SK. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize glView;
-(void)dealloc {
    [super dealloc];
}

-(void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    
    
    self.view=(UIView*)glView;
    [glView setDelegate:self];
    [glView startAnimation];
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)glViewDelegateTest{
    NSLog(@"delegate出来てます");
}
@end