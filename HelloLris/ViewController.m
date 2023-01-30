//
//  ViewController.m
//  HelloLris
//
//  Created by apple on 2023/1/30.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak)IBOutlet UILabel *label;

@property (nonatomic, weak) UILabel *mLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 动态创建一个UILabel挂载到页面上
    UILabel *label = [[UILabel alloc] init];
    // 设置位置和尺寸
    label.frame = CGRectMake(100, 100, 100, 60);
    // 设置背景色
    label.backgroundColor = [UIColor yellowColor];
    // 添加到控制器的view中
    [self.view addSubview:label];
    // 绑定应用到全局变量
    self.mLabel = label;
}

#pragma mark - 点击红色按钮
- (IBAction)clickRedButton {
    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor redColor];
    // 改变文字内容
    self.label.text = @"我是一段红色文字～";
    // 背景色
//    self.label.backgroundColor = [UIColor greenColor];
    // 对齐方式
    self.label.textAlignment = NSTextAlignmentCenter;
    // 设置圆角
    self.label.layer.cornerRadius = 4;
    // 圆角必须这么设置背景才会生效
    self.label.layer.backgroundColor = [UIColor greenColor].CGColor;
}

#pragma mark - 点击绿色按钮
- (IBAction)clickGreenButton {
    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor greenColor];
    // 改变文字内容
    self.label.text = @"我是一段绿色文字～";
    // 背景色
//    self.label.backgroundColor = [UIColor redColor];
    // 对齐方式
    self.label.textAlignment = NSTextAlignmentCenter;
    // 设置圆角
    self.label.layer.cornerRadius = 4;
    // 圆角必须这么设置背景才会生效
    self.label.layer.backgroundColor = [UIColor redColor].CGColor;
}

#pragma mark - 点击蓝色按钮
- (IBAction)clickBlueButton {
    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor blueColor];
    // 改变文字内容
    self.label.text = @"我是一段蓝色文字～";
    // 背景色
//    self.label.backgroundColor = [UIColor yellowColor];
    // 对齐方式
    self.label.textAlignment = NSTextAlignmentCenter;
    // 设置圆角
    self.label.layer.cornerRadius = 4;
    // 圆角必须这么设置背景才会生效
    self.label.layer.backgroundColor = [UIColor yellowColor].CGColor;
}

#pragma mark - 点击bounds按钮
- (IBAction)clickBoundsButton {
    // bounds只能改变尺寸，不能改变位置，即：x和y默认都是0,0
    self.mLabel.bounds = CGRectMake(0, 0, 200, 120);
}

#pragma mark - 点击center按钮
- (IBAction)clickCenterButton {
    // center只能改变位置，即以父控件为原点和其中心点位置移动
    self.mLabel.center = CGPointMake(100, 100);
    // 小扩展：显示到页面最中间
    self.mLabel.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5);
}

#pragma mark - 点击frame按钮
- (IBAction)clickFrameButton {
    // 改变位置和尺寸的几种方式
    // 方式一
//    self.mLabel.frame = CGRectMake(200, 100, 100, 60);
    // 方式二
    CGRect frame = self.mLabel.frame; // 结构体只能是值传递，不能是地址传递
    frame.origin.x += 100;   // 单独改变X轴位置
//    frame.origin.y -= 10;    // 单独改变Y轴位置
//    frame.size.width += 100; // 单独改变宽度
//    frame.size.height += 60; // 单独改变高度
    self.mLabel.frame = frame;
}

@end
