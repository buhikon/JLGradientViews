//
//  JLGradientView.h
//
//  Version 0.1.0
//
//  Created by Joey L. on 09/03/2016.
//  Copyright (c) 2016 Joey L. All rights reserved.
//
//  https://github.com/buhikon/JLGradientViews
//

#if ! __has_feature(objc_arc)
#error This file must be compiled with ARC. Either turn on ARC for the project or use -fobjc-arc flag
#endif

#import <UIKit/UIKit.h>

@interface JLGradientView : UIView

@property (strong, nonatomic) IBInspectable UIColor *startColor;
@property (strong, nonatomic) IBInspectable UIColor *endColor;
@property (assign, nonatomic) IBInspectable CGPoint startPoint;
@property (assign, nonatomic) IBInspectable CGPoint endPoint;


@end
