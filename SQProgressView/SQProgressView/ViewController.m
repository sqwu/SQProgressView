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
        _progressView.backgroundColor = [UIColor whiteColor];
        
        _progressView.numberOfProgressView = 4;
        _progressView.leftAndRightMargin = 20;
        _progressView.centerMargin = 10;
        _progressView.progressViewHeight = 13;
        _progressView.topOrBottomMargin = 10;
        _progressView.titleLabelHeight = 21;
        _progressView.titleFontSize = 17;
        _progressView.titleArray = @[@"文字1", @"文字2",  @"文字3",  @"文字4"];
        
        _progressView.showSingleProgressView = YES;
        _progressView.currentProgress = 1;
        _progressView.progressColor = [UIColor grayColor];
        _progressView.completedProgressColor = [UIColor blackColor];
    }
    return _progressView;
}

@end
