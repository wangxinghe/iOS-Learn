//
//  ViewController.m
//  iOSLearn
//
//  Created by wangxinghe on 7/5/2016.
//  Copyright © 2016 mouxuejie.com. All rights reserved.
//

#import "MXJViewController.h"

#import "Masonry.h"
#import "SVProgressHUD.h"
//#import "<Masonry/Masonry.h>"
//#import "<SVProgressHUD/SVProgressHUD.h>"


@interface MXJViewController ()

@end

@implementation MXJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupUi];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setupUi {
    [self createButton2];
    [self createButtonWithMAS];
}

//case1 storyboard 创建UI
- (IBAction)onButton1Click:(id)sender {
    [self onButtonClick:sender];
}

//case2 代码创建UI
- (void)createButton2 {
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button2 setTitle:@"Button2" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(onButton2Click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    button2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addConstraints:@[
                                [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:60.0],
                                [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:40.0],
                                [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0],
                                [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeCenterYWithinMargins relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:-60]
                                ]];
}


- (void)onButton2Click:(id)sender {
    [self onButtonClick:sender];
}

- (IBAction)onButtonClick:(id)sender {
    NSLog(@"Hello World!");
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Hello" message:@"Hello World" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"Cancel Action");
    }];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"OK Action");
    }];
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

//case3 使用第三方库创建UI
- (void)createButtonWithMAS {
    UIButton *buttonWithMAS = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonWithMAS setTitle:@"Hello MAS" forState:UIControlStateNormal];
    [buttonWithMAS addTarget:self action:@selector(onButtonMASClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonWithMAS];
    [buttonWithMAS mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@100.0);
        make.height.equalTo(@40.0);
        make.center.equalTo(self.view);
    }];
}

- (void)onButtonMASClick:(id)sender {
    NSLog(@"Hello MAS");
    
    [SVProgressHUD showSuccessWithStatus:@"Hello MAS" maskType:SVProgressHUDMaskTypeBlack];
}

@end
