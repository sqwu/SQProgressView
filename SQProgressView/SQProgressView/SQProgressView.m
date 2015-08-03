//
//  SQProgressView.m
//  SQProgressView
//
//  Created by sqwu on 15/8/4.
//  Copyright (c) 2015年 sqwu.com. All rights reserved.
//

#import "SQProgressView.h"

@implementation SQProgressView

- (void)drawRect:(CGRect)rect {
    
    CGFloat progressViewWidth = (self.frame.size.width - (self.numberOfProgressView - 2) * self.LeftAndRightMargin - (self.numberOfProgressView - 1) * self.centerMargin) / self.numberOfProgressView;
    
    for (int i = 0; i < self.numberOfProgressView; i++) {
        UIBezierPath *progressViewPath = [UIBezierPath bezierPathWithRect: CGRectMake(self.LeftAndRightMargin + i * progressViewWidth + i * self.centerMargin, (CGRectGetHeight(self.bounds) - self.progressViewHeight) / 2, progressViewWidth, self.progressViewHeight)];
        [UIColor.grayColor setFill];
        [progressViewPath fill];
    }
}

@end
