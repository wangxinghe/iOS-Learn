//
//  MXJFeature1ViewController.m
//  iOSLearn
//
//  Created by wangxinghe on 7/5/2016.
//  Copyright © 2016 mouxuejie.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MXJFeature1ViewController.h"
#import "MXJCommonUtil.h"
#import "Masonry.h"

NSString * const MXJFeature1CellIdentifier = @"MXJFeature1CellIdentifier";

@interface MXJFeature1ViewController() <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) UITableView *myTableView;

@end

@implementation MXJFeature1ViewController

- (UITableView *)myTableView {
    if (!_myTableView) {
        _myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:(UITableViewStyleGrouped)];
        [_myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:MXJFeature1CellIdentifier];
        _myTableView.delegate = self;
        _myTableView.dataSource = self;
    }
    
    return _myTableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUi];
}

- (void)setupUi {
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.automaticallyAdjustsScrollViewInsets = YES;
    self.extendedLayoutIncludesOpaqueBars = YES;
    
    // myTableView.
    [self.view addSubview:self.myTableView];
    [self.myTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}
#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Header";
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1000;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MXJFeature1CellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = @"Hi";
    cell.imageView.image = [MXJCommonUtil imageWithColor:[UIColor redColor] size:CGSizeMake(30, 30)];
    cell.layer.shouldRasterize = YES;
    cell.layer.rasterizationScale = [UIScreen mainScreen].scale;
    
    return cell;
}

@end

