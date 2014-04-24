//
//  ViewController.h
//  GLTest1-1
//
//  Created by s.k on 2013/03/22.
//  Copyright (c) 2013年 SK. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "EAGLView.h"

@interface ViewController : UIViewController <glViewDelegate>

@property (nonatomic, retain) IBOutlet EAGLView *glView;
@end
