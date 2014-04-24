//
//  EAGLView.h
//  glTest
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

#import "ES1Renderer.h"


//protocolを宣言しておく
@protocol glViewDelegate;

// This class wraps the CAEAGLLayer from CoreAnimation into a convenient UIView subclass.
// The view content is basically an EAGL surface you render your OpenGL scene into.
// Note that setting the view non-opaque will only work if the EAGL surface has an alpha channel.
@interface EAGLView : UIView
{    
@private
	ES1Renderer* renderer;
	
	BOOL animating;
	BOOL displayLinkSupported;
	NSInteger animationFrameInterval;
	// Use of the CADisplayLink class is the preferred method for controlling your animation timing.
	// CADisplayLink will link to the main display and fire every vsync when added to a given run-loop.
	// The NSTimer class is used only as fallback when running on a pre 3.1 device where CADisplayLink
	// isn't available.
	id displayLink;
    NSTimer *animationTimer;
    //ボタン
    UIButton *btn;
}

@property (readonly, nonatomic, getter=isAnimating) BOOL animating;
@property (nonatomic) NSInteger animationFrameInterval;
//デリゲートのプロパティ宣言
@property (nonatomic, assign) id<glViewDelegate> delegate;

- (void) startAnimation;
- (void) stopAnimation;
- (void) drawView:(id)sender;


- (void) buttonPush:(UIButton*)button;

@end

//protocol宣言
@protocol glViewDelegate

@optional
//デリゲート経由で呼ばれるメソッドを宣言
- (void)glViewDelegateTest;



@end
