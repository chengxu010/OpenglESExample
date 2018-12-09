//
//  ViewFor光线.h
//  TestOpenGl
//
//  Created by Ryan on 2018/12/9.
//  Copyright © 2018年 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
#import <OpenGLES/ES2/gl.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewFor光线: UIView

@property (nonatomic , strong) EAGLContext* myContext;
@property (nonatomic , strong) CAEAGLLayer* myEagLayer;
@property (nonatomic , assign) GLuint       myProgram;


@property (nonatomic , assign) GLuint myColorRenderBuffer;
@property (nonatomic , assign) GLuint myColorFrameBuffer;

@end

NS_ASSUME_NONNULL_END
