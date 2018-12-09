//
//  ViewFor索引缓冲对象.m
//  TestOpenGl
//
//  Created by Ryan on 2018/12/9.
//  Copyright © 2018年 Ryan. All rights reserved.
//

#import "ViewFor索引缓冲对象.h"

@implementation ViewFor索引缓冲对象

-(void)drawView {
    
    float vertices[] = {
        0.5f, 0.5f, 0.0f,   // 右上角
        0.5f, -0.5f, 0.0f,  // 右下角
        -0.5f, -0.5f, 0.0f, // 左下角
        -0.5f, 0.5f, 0.0f   // 左上角
    };
    
    unsigned int indices[] = { // 注意索引从0开始!
        0, 1, 3, // 第一个三角形
        1, 2, 3  // 第二个三角形
    };
    
    //颜色数组
    float colorData[] = {
        1.0f, 0.0f, 0.0f,
        0.0f, 1.0f, 0.0f,
        0.0f, 0.0f, 1.0f
    };
    
    glVertexAttribPointer(self.positionLocation, 3, GL_FLOAT, GL_FALSE, 0, vertices);
    glEnableVertexAttribArray(self.positionLocation);
    
    glVertexAttribPointer(self.colorLocation, 3, GL_FLOAT, GL_FALSE, 3*sizeof(GLfloat), (float *)colorData);
    
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_BYTE, indices);
}

@end
