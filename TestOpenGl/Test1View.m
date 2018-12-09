//
//  Test1View.m
//  TestOpenGl
//
//  Created by Ryan on 2018/12/6.
//  Copyright © 2018年 Ryan. All rights reserved.
//

#import "Test1View.h"
#import <OpenGLES/ES2/gl.h>
//#import "GLProgram.h"

@interface Test1View ()

//@property (nonatomic , assign) GLuint myTexture0;
//@property (nonatomic , assign) GLuint myTexture1;

@end

@implementation Test1View
//
//- (void)update {
//    [self destoryRenderAndFrameBuffer];
//    [self setupRenderBuffer];
//    [self setupFrameBuffer];
//    [self render];
//}
//
//#pragma mark - init
//- (void)customInit {
//    [self setupLayer];
//    [self setupContext];
//    
//    [self setupProgramWithVertexShader:gVertexShaderSource fragmentShader:gFragmentShaderSource];
//}
//
//- (void)setupProgramWithVertexShader:(const char *)vShaderString fragmentShader:(const char *)fShaderString {
//    CGFloat scale = [[UIScreen mainScreen] scale]; //获取视图放大倍数，可以把scale设置为1试试
//    glViewport(self.frame.origin.x * scale, self.frame.origin.y * scale, self.frame.size.width * scale, self.frame.size.height * scale); //设置视口大小
//
//    NSString* vertFile = [NSString stringWithUTF8String:gVertexShaderSource];
//    NSString* fragFile = [NSString stringWithUTF8String:gFragmentShaderSource];
//    
//    //加载shader
//    self.mProgram = [[GLProgram alloc] initWithVertexShaderString:vertFile fragmentShaderString:fragFile];
//    if (!self.mProgram.initialized)
//    {
//        [self.mProgram addAttribute:@"position"];
//        [self.mProgram addAttribute:@"textCoordinate"];
//        
//        if (![self.mProgram link])
//        {
//            NSString *progLog = [self.mProgram programLog];
//            NSLog(@"Program link log: %@", progLog);
//            NSString *fragLog = [self.mProgram fragmentShaderLog];
//            NSLog(@"Fragment shader compile log: %@", fragLog);
//            NSString *vertLog = [self.mProgram vertexShaderLog];
//            NSLog(@"Vertex shader compile log: %@", vertLog);
//            self.mProgram = nil;
//            NSAssert(NO, @"Filter shader link failed");
//        }
//    }
//    GLuint texture0Uniform = [self.mProgram uniformIndex:@"myTexture0"];
//    GLuint texture1Uniform = [self.mProgram uniformIndex:@"myTexture1"];
//    GLuint leftBottomUniform = [self.mProgram uniformIndex:@"leftBottom"];
//    GLuint rightTopUniform = [self.mProgram uniformIndex:@"rightTop"];
//    GLuint displayPositionAttribute = [self.mProgram attributeIndex:@"position"];
//    GLuint displayTextureCoordinateAttribute = [self.mProgram attributeIndex:@"textCoordinate"];
//    [self.mProgram use];
//    glEnableVertexAttribArray(displayPositionAttribute);
//    glEnableVertexAttribArray(displayTextureCoordinateAttribute);
//    
//    
//    //前三个是顶点坐标， 后面两个是纹理坐标
//    GLfloat attrArr[] =
//    {
//        0.5f, -0.5f, -1.0f,     1.0f, 0.0f,
//        -0.5f, 0.5f, -1.0f,     0.0f, 1.0f,
//        -0.5f, -0.5f, -1.0f,    0.0f, 0.0f,
//        0.5f, 0.5f, -1.0f,      1.0f, 1.0f,
//        -0.5f, 0.5f, -1.0f,     0.0f, 1.0f,
//        0.5f, -0.5f, -1.0f,     1.0f, 0.0f,
//    };
//    
//    GLuint attrBuffer;
//    glGenBuffers(1, &attrBuffer);
//    glBindBuffer(GL_ARRAY_BUFFER, attrBuffer);
//    glBufferData(GL_ARRAY_BUFFER, sizeof(attrArr), attrArr, GL_DYNAMIC_DRAW);
//    
//    
//    glVertexAttribPointer(displayPositionAttribute, 3, GL_FLOAT, GL_FALSE, sizeof(GLfloat) * 5, NULL);
//    glEnableVertexAttribArray(displayPositionAttribute);
//    
//    glVertexAttribPointer(displayTextureCoordinateAttribute, 2, GL_FLOAT, GL_FALSE, sizeof(GLfloat) * 5, (float *)NULL + 3);
//    glEnableVertexAttribArray(displayTextureCoordinateAttribute);
//    
//    //加载纹理
//    self.myTexture0 = [self loadTexture:@"for_test"];
//    self.myTexture1 = [self loadTexture:@"abc"];
//    
//    glActiveTexture(GL_TEXTURE0);
//    glBindTexture(GL_TEXTURE_2D, self.myTexture0);
//    glUniform1i(texture0Uniform, 0);
//    
//    glActiveTexture(GL_TEXTURE1);
//    glBindTexture(GL_TEXTURE_2D, self.myTexture1);
//    glUniform1i(texture1Uniform, 1);
//    glUniform2f(leftBottomUniform, -0.15, -0.15);
//    glUniform2f(rightTopUniform, 0.30, 0.30);
//}
//


@end
