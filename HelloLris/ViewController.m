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
}

#pragma mark - 点击绿色按钮
- (IBAction)clickGreenButton {
    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor greenColor];
}

#pragma mark - 点击蓝色按钮
- (IBAction)clickBlueButton {
    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor blueColor];
}

@end
