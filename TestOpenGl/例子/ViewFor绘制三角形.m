//
//  ViewFor绘制三角形.m
//  TestOpenGl
//
//  Created by Ryan on 2018/12/9.
//  Copyright © 2018年 Ryan. All rights reserved.
//

#import "ViewFor绘制三角形.h"

@implementation ViewFor绘制三角形

-(void)drawView {
    
    //顶点位置数组
    float positionData[] = {
        0.5f, -0.5f, -1.0f,
        -0.5f, 0.5f, -1.0f,
        -0.5f, -0.5f, -1.0f
    };
    //颜色数组
    float colorData[] = {
        1.0f, 0.0f, 0.0f,
        0.0f, 1.0f, 0.0f,
        0.0f, 0.0f, 1.0f
    };
    
    /*顶点缓冲对象是我们在OpenGL教程中第一个出现的OpenGL对象。就像OpenGL中的其它对象一样，这个缓冲有一个独一无二的ID，所以我们可以使用glGenBuffers函数和一个缓冲ID生成一个VBO对象*/
    GLuint positonAttrBuffer;
    glGenBuffers(1, &positonAttrBuffer);
    /*OpenGL有很多缓冲对象类型，顶点缓冲对象的缓冲类型是GL_ARRAY_BUFFER。OpenGL允许我们同时绑定多个缓冲，只要它们是不同的缓冲类型。我们可以使用glBindBuffer函数把新创建的缓冲绑定到GL_ARRAY_BUFFER目标上*/
    glBindBuffer(GL_ARRAY_BUFFER, positonAttrBuffer);
    /*从这一刻起，我们使用的任何（在GL_ARRAY_BUFFER目标上的）缓冲调用都会用来配置当前绑定的缓冲(VBO)。然后我们可以调用glBufferData函数，它会把之前定义的顶点数据复制到缓冲的内存中
     glBufferData是一个专门用来把用户定义的数据复制到当前绑定缓冲的函数。它的第一个参数是目标缓冲的类型：顶点缓冲对象当前绑定到GL_ARRAY_BUFFER目标上。第二个参数指定传输数据的大小(以字节为单位)；用一个简单的sizeof计算出顶点数据大小就行。第三个参数是我们希望发送的实际数据。
     
     第四个参数指定了我们希望显卡如何管理给定的数据。它有三种形式：
    
         GL_STATIC_DRAW ：数据不会或几乎不会改变。
         GL_DYNAMIC_DRAW：数据会被改变很多。
         GL_STREAM_DRAW ：数据每次绘制时都会改变。
     三角形的位置数据不会改变，每次渲染调用时都保持原样，所以它的使用类型最好是GL_STATIC_DRAW。如果，比如说一个缓冲中的数据将频繁被改变，那么使用的类型就是GL_DYNAMIC_DRAW或GL_STREAM_DRAW，这样就能确保显卡把数据放在能够高速写入的内存部分。
     */
    glBufferData(GL_ARRAY_BUFFER, sizeof(positionData), positionData, GL_DYNAMIC_DRAW);
    /*
     glVertexAttribPointer函数的参数非常多，所以我会逐一介绍它们：
     
     第一个参数指定我们要配置的顶点属性。还记得我们在顶点着色器中使用layout(location = 0)定义了position顶点属性的位置值(Location)吗？它可以把顶点属性的位置值设置为0。因为我们希望把数据传递到这一个顶点属性中，所以这里我们传入0。
     第二个参数指定顶点属性的大小。顶点属性是一个vec3，它由3个值组成，所以大小是3。
     第三个参数指定数据的类型，这里是GL_FLOAT(GLSL中vec*都是由浮点数值组成的)。
     下个参数定义我们是否希望数据被标准化(Normalize)。如果我们设置为GL_TRUE，所有数据都会被映射到0（对于有符号型signed数据是-1）到1之间。我们把它设置为GL_FALSE。
     第五个参数叫做步长(Stride)，它告诉我们在连续的顶点属性组之间的间隔。由于下个组位置数据在3个float之后，我们把步长设置为3 * sizeof(float)。要注意的是由于我们知道这个数组是紧密排列的（在两个顶点属性之间没有空隙）我们也可以设置为0来让OpenGL决定具体步长是多少（只有当数值是紧密排列时才可用）。一旦我们有更多的顶点属性，我们就必须更小心地定义每个顶点属性之间的间隔，我们在后面会看到更多的例子（译注: 这个参数的意思简单说就是从这个属性第二次出现的地方到整个数组0位置之间有多少字节）。
     最后一个参数的类型是void*，所以需要我们进行这个奇怪的强制类型转换。它表示位置数据在缓冲中起始位置的偏移量(Offset)。由于位置数据在数组的开头，所以这里是0。我们会在后面详细解释这个参数。
     */
    glVertexAttribPointer(self.positionLocation, 3, GL_FLOAT, GL_FALSE, 3*sizeof(GLfloat) , (float *)NULL);
    
    GLuint colorAttrBuffer;
    glGenBuffers(1, &colorAttrBuffer);
    glBindBuffer(GL_ARRAY_BUFFER, colorAttrBuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(colorData), colorData, GL_DYNAMIC_DRAW);
    glVertexAttribPointer(self.colorLocation, 3, GL_FLOAT, GL_FALSE, 3*sizeof(GLfloat) , (float *)NULL);
    
//    glVertexAttribPointer(self.positionLocation, 3, GL_FLOAT, GL_FALSE, 3*sizeof(GLfloat) , (float *)positionData);
//    glVertexAttribPointer(self.colorLocation, 3, GL_FLOAT, GL_FALSE, 3*sizeof(GLfloat), (float *)colorData);
    
    //
//    glDrawArrays(GL_TRIANGLES, 0, 3);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 3);
}

@end
