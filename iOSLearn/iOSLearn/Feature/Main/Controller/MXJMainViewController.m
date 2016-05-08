//
//  MXJMainViewController.m
//  iOSLearn
//
//  Created by wangxinghe on 7/5/2016.
//  Copyright © 2016 mouxuejie.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MXJMainViewController.h"
#import "Masonry.h"
#import "SVProgressHUD.h"
#import "MXJDetailViewController.h"

@interface MXJMainViewController ()

@end

@implementation MXJMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUi];
}

- (void)setupUi {
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.automaticallyAdjustsScrollViewInsets = YES;
    self.extendedLayoutIncludesOpaqueBars = YES;
    
    UIBarButtonItem *detailBarButton = [[UIBarButtonItem alloc] initWithTitle:@"Detail" style:(UIBarButtonItemStylePlain) target:self action:@selector(goToDetailPage)];
    self.navigationItem.rightBarButtonItem = detailBarButton;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Hello" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@60.0);
        make.height.equalTo(@40.0);
        make.center.equalTo(self.view);
    }];
    
}

- (void)goToDetailPage {
    MXJDetailViewController *feature1ViewController = [[MXJDetailViewController alloc] init];
    feature1ViewController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:feature1ViewController animated:YES];
}

- (void)onButtonClick:(id)sender {
    NSLog(@"Main Page");
    
    [SVProgressHUD showSuccessWithStatus:@"Main Page" maskType:(SVProgressHUDMaskTypeBlack)];
}

@end