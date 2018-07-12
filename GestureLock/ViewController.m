//
//  ViewController.m
//  GestureLock
//
//  Created by Superman on 2018/7/11.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import "ViewController.h"
#import "Bntview.h"


@interface ViewController ()<BntviewDelegate>
@property(strong,nonatomic)UIImageView *imageview;
@property(strong,nonatomic)Bntview *bntview;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Home_refresh_bg"]];
    
    
    UIImageView *imageview=[[UIImageView alloc]initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-100)*0.5, 100, 100, 100)];
    [self.view addSubview:imageview];
    _imageview=imageview;
    
    Bntview *bntview=[[Bntview alloc]initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-300)*0.5, CGRectGetMaxY(imageview.frame)+50, 300, 300)];
    bntview.backgroundColor=[UIColor clearColor];
    bntview.delegate = self;
    [self.view addSubview:bntview];
    _bntview=bntview;
    
}
//实现代理方法
-(void)bntview:(Bntview *)bntview :(NSString *)strM{
    //开启一个图形上下文
    UIGraphicsBeginImageContextWithOptions(bntview.frame.size, NO, 0.0);
    //获取图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //截图
    [self.bntview.layer renderInContext:ctx];
    //获取图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //关闭图形上下文
    UIGraphicsEndImageContext();
    //把获取的图片保存到 imageview 中
    self.imageview.image = image;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


















