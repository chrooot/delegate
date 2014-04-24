//
//  AppDelegate.m
//  GLTest1-1
//
//

#import "AppDelegate.h"
#import "EAGLView.h"

@implementation AppDelegate

-(void)dealloc {
    [_window.rootViewController.view release];
    [_window release];
    [super dealloc];
}

-(BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions {
    EAGLView* view = (EAGLView*)_window.rootViewController.view;
    [view startAnimation];
    return YES;
}

-(void)applicationWillResignActive:(UIApplication*)application {
    EAGLView* view = (EAGLView*)_window.rootViewController.view;
    [view stopAnimation];
}

-(void)applicationDidEnterBackground:(UIApplication*)application {
    EAGLView* view = (EAGLView*)_window.rootViewController.view;
    [view stopAnimation];
}

-(void)applicationWillEnterForeground:(UIApplication*)application {
    EAGLView* view = (EAGLView*)_window.rootViewController.view;
    [view startAnimation];
}

-(void)applicationDidBecomeActive:(UIApplication*)application {
    EAGLView* view = (EAGLView*)_window.rootViewController.view;
    [view startAnimation];
}

-(void)applicationWillTerminate:(UIApplication*)application {
    EAGLView* view = (EAGLView*)_window.rootViewController.view;
    [view stopAnimation];
}

@end