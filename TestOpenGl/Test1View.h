//
//  Test1View.h
//  TestOpenGl
//
//  Created by Ryan on 2018/12/6.
//  Copyright © 2018年 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
#import "GlBaseView.h"

NS_ASSUME_NONNULL_BEGIN

//static const char gVertexShaderSource[] = {
//    "attribute vec4 position;"
//    "attribute vec2 textCoordinate;"
//    "varying lowp vec2 varyTextCoord;"
//    "varying lowp vec2 varyOtherPostion;"
//    "void main()"
//    "{"
//        "varyTextCoord = textCoordinate;"
//        "varyOtherPostion = position.xy;"
//        "gl_Position = position;"
//    "}"
//};
//
//static const char gFragmentShaderSource[] = {
//    "varying lowp vec2 varyTextCoord;"
//    "varying lowp vec2 varyOtherPostion;"
//    "uniform lowp vec2 leftBottom;"
//    "uniform lowp vec2 rightTop;"
//    "uniform sampler2D myTexture0;"
//    "uniform sampler2D myTexture1;"
//    "void main()"
//    "{"
//    "    if (varyOtherPostion.x >= leftBottom.x && varyOtherPostion.y >= leftBottom.y && varyOtherPostion.x <= rightTop.x && varyOtherPostion.y <= rightTop.y) {"
//    "   lowp vec2 test = vec2((varyOtherPostion.x - leftBottom.x) / (rightTop.x - leftBottom.x), 1.0 -  (varyOtherPostion.y - leftBottom.y) / (rightTop.y - leftBottom.y));"
//    "       lowp vec4 otherColor = texture2D(myTexture1, test);"
//    "        gl_FragColor = otherColor * otherColor.a + texture2D(myTexture0, 1.0 - varyTextCoord) * (1.0 - otherColor.a);"
//    "    }"
//    "    else {"
//    "        gl_FragColor = texture2D(myTexture0, 1.0 - varyTextCoord);"
//    "    }"
//    "}"
//};

@interface Test1View : GlBaseView


@end

NS_ASSUME_NONNULL_END
