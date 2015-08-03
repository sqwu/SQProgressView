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
@property (assign, nonatomic) CGFloat LeftAndRightMargin;

/**
 *  中间间距
 */
@property (assign, nonatomic) CGFloat centerMargin;

/**
 *  进程view高度
 */
@property (assign, nonatomic) CGFloat progressViewHeight;

@end
