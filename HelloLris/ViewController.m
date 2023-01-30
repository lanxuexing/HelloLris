//
//  ViewController.m
//  HelloLris
//
//  Created by apple on 2023/1/30.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak)IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

@end
