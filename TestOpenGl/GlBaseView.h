//
//  GlBaseView.h
//  TestOpenGl
//
//  Created by Ryan on 2018/12/9.
//  Copyright © 2018年 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
#import <OpenGLES/ES2/gl.h>

NS_ASSUME_NONNULL_BEGIN



@interface GlBaseView : UIView

@property (nonatomic, assign) GLuint positionLocation;
@property (nonatomic, assign) GLuint colorLocation;

-(void)drawView;

@end

NS_ASSUME_NONNULL_END
