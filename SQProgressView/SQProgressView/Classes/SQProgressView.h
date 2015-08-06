//
//  SQProgressView.h
//  SQProgressView
//
//  Created by sqwu on 15/8/4.
//  Copyright (c) 2015年 sqwu.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SQProgressView : UIView

/**
 *  进程view个数
 */
@property (assign, nonatomic) CGFloat numberOfProgressView;

/**
 *  左右间距
 */
@property (assign, nonatomic) CGFloat leftAndRightMargin;

/**
 *  中间间距
 */
@property (assign, nonatomic) CGFloat centerMargin;

/**
 *  上下间距
 */
@property (assign, nonatomic) CGFloat topOrBottomMargin;

/**
 *  进程view高度
 */
@property (assign, nonatomic) CGFloat progressViewHeight;

/**
 *  文字高度
 */
@property (assign, nonatomic) CGFloat titleLabelHeight;

/**
 *  字体大小
 */
@property (assign, nonatomic) CGFloat titleFontSize;

/**
 *  文字数组
 */
@property (strong, nonatomic) NSArray *titleArray;

/**
 *  当前进程
 */
@property(nonatomic) NSInteger currentProgress;

/**
 *  进程颜色
 */
@property(nonatomic,retain) UIColor *progressColor;

/**
 *  已完成进程颜色
 */
@property(nonatomic,retain) UIColor *completedProgressColor;

/**
 *  显示单一进程
 */
@property (assign, nonatomic) BOOL showSingleProgressView;

@end
