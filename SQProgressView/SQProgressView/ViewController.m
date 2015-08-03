//
//  ViewController.m
//  SQProgressView
//
//  Created by sqwu on 15/8/4.
//  Copyright (c) 2015年 sqwu.com. All rights reserved.
//

#import "ViewController.h"

#import "SQProgressView.h"

@interface ViewController ()

@property (strong, nonatomic) SQProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.progressView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - getters

- (SQProgressView *)progressView
{
    if (!_progressView) {
        _progressView = [[SQProgressView alloc] initWithFrame:CGRectMake(0, 64, CGRectGetWidth([UIScreen mainScreen].bounds), 100)];
        
        _progressView.numberOfProgressView = 4;
        _progressView.LeftAndRightMargin = 20;
        _progressView.centerMargin = 10;
        _progressView.progressViewHeight = 10;
    }
    return _progressView;
}

@end
