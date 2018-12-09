//
//  ViewController.m
//  TestOpenGl
//
//  Created by Ryan on 2018/11/24.
//  Copyright © 2018年 Ryan. All rights reserved.
//

#import "ViewController.h"
#import <OpenGLES/EAGL.h>
#import <OpenGLES/ES2/gl.h>
#import "Test1View.h"
#import "Test2View.h"
#import "ViewFor纹理贴图.h"
#import "ViewFor绘制三角形.h"
#import "ViewFor索引缓冲对象.h"
#import "ViewFor光线.h"
#import "ViewFor纹理贴图旋转.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSInteger examplePos = 2;
    UIView *testView = nil;
    if (examplePos == 0){
        ViewFor纹理贴图 *view = [[ViewFor纹理贴图 alloc] initWithFrame:CGRectMake(50, 100, 200, 300)];
        testView = view;
    }
    else if (examplePos == 1){
        ViewFor纹理贴图旋转 *view = [[ViewFor纹理贴图旋转 alloc] initWithFrame:CGRectMake(50, 100, 200, 300)];
        testView = view;
    }
    else if (examplePos == 2){
//        ViewFor绘制三角形 *view = [[ViewFor绘制三角形 alloc] initWithFrame:CGRectMake(50, 100, 200, 300)];
        ViewFor索引缓冲对象 *view = [[ViewFor索引缓冲对象 alloc] initWithFrame:CGRectMake(50, 100, 200, 300)];
        testView = view;
    }
    else if (examplePos == 3){
        ViewFor光线 *view = [[ViewFor光线 alloc] initWithFrame:CGRectMake(50, 100, 200, 300)];
        testView = view;
    }
    testView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:testView];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
}


@end
