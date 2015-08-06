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
    
    CGFloat progressViewWidth = (self.frame.size.width - (self.numberOfProgressView - 2) * self.leftAndRightMargin - (self.numberOfProgressView - 1) * self.centerMargin) / self.numberOfProgressView;
    
    for (int i = 0; i < self.numberOfProgressView; i++) {
        UIBezierPath *progressViewPath = [UIBezierPath bezierPathWithRect: CGRectMake(self.leftAndRightMargin + i * progressViewWidth + i * self.centerMargin, (CGRectGetHeight(self.bounds) - self.progressViewHeight) / 2, progressViewWidth, self.progressViewHeight)];
        
        // 颜色设置
        if (self.showSingleProgressView) {
            if (i == self.currentProgress) {
                [self.completedProgressColor setFill];
            } else {
                [self.progressColor setFill];
            }
        } else {
            if (i < self.currentProgress) {
                [self.completedProgressColor setFill];
            } else {
                [self.progressColor setFill];
            }
        }
        
        [progressViewPath fill];
        
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGRect firstTextRect = CGRectMake(self.leftAndRightMargin + i * progressViewWidth + i * self.centerMargin, (CGRectGetHeight(self.bounds) - self.progressViewHeight) / 2 + self.progressViewHeight + self.topOrBottomMargin, progressViewWidth, self.titleLabelHeight);
        {
            NSString *textContent = self.titleArray[i];
            NSMutableParagraphStyle *firstTextStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
            firstTextStyle.alignment = NSTextAlignmentCenter;
            
            // 颜色设置
            NSDictionary *textFontAttributes;
            if (self.showSingleProgressView) {
                if (i == self.currentProgress) {
                    textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: self.titleFontSize], NSForegroundColorAttributeName: self.completedProgressColor, NSParagraphStyleAttributeName: firstTextStyle};
                } else {
                    textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: self.titleFontSize], NSForegroundColorAttributeName: self.progressColor, NSParagraphStyleAttributeName: firstTextStyle};
                }
            } else {
                if (i < self.currentProgress) {
                    textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: self.titleFontSize], NSForegroundColorAttributeName: self.completedProgressColor, NSParagraphStyleAttributeName: firstTextStyle};
                } else {
                    textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: self.titleFontSize], NSForegroundColorAttributeName: self.progressColor, NSParagraphStyleAttributeName: firstTextStyle};
                }
            }
            
            CGFloat firstTextTextHeight = [textContent boundingRectWithSize: CGSizeMake(firstTextRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
            CGContextSaveGState(context);
            CGContextClipToRect(context, firstTextRect);
            [textContent drawInRect: CGRectMake(CGRectGetMinX(firstTextRect), CGRectGetMinY(firstTextRect) + (CGRectGetHeight(firstTextRect) - firstTextTextHeight) / 2, CGRectGetWidth(firstTextRect), firstTextTextHeight) withAttributes: textFontAttributes];
            CGContextRestoreGState(context);
        }
    }
}

@end
