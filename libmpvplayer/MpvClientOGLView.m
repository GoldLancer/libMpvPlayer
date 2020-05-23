//
//  MpvClientOGLView.m
//  libMpvPlayer
//
//  Created by Anton Yagov on 5/24/20.
//  Copyright © 2020 Anton Yagov. All rights reserved.
//

#import "MpvClientOGLView.h"

#import <AVFoundation/AVFoundation.h>
#import <Accelerate/Accelerate.h>
#import <CoreMotion/CoreMotion.h>
#import <VideoToolbox/VideoToolbox.h>
#import <GameController/GameController.h>

@implementation MpvClientOGLView {
    GLint defaultFBO;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        [self initView];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder: coder];
    
    if (self) {
        [self initView];
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame context:(EAGLContext *)context {
    self = [super initWithFrame:frame context:context];
    
    if (self) {
        [self initView];
    }
    
    return self;
}

- (void)initView {
    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES3];
    [EAGLContext setCurrentContext:self.context];

    // Configure renderbuffers created by the view
    self.drawableColorFormat = GLKViewDrawableColorFormatRGBA8888;
    self.drawableDepthFormat = GLKViewDrawableDepthFormatNone;
    self.drawableStencilFormat = GLKViewDrawableStencilFormatNone;
    
    defaultFBO = -1;
}
    
- (void)fillBlack
{
    glClearColor(0, 0, 0, 0);
    glClear(GL_COLOR_BUFFER_BIT);
}
    
- (void)drawRect
{
    if (defaultFBO == -1)
    {
        glGetIntegerv(GL_FRAMEBUFFER_BINDING, &defaultFBO);
    }

    /*
    if (self.mpvGL)
    {
        mpv_opengl_cb_draw(self.mpvGL,
                           defaultFBO,
                           self.bounds.size.width * self.contentScaleFactor,
                           -self.bounds.size.height * self.contentScaleFactor);
    }
     */
}

- (void)drawRect:(CGRect)rect
{
    [self drawRect];
}

@end
