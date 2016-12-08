//
//  JLVerticalGradientView.h
//
//  Version 0.2.0
//
//  Created by Joey L. on 09/03/2016.
//  Copyright (c) 2016 Joey L. All rights reserved.
//
//  https://github.com/buhikon/JLGradientViews
//

#import <UIKit/UIKit.h>

@interface JLVerticalGradientView : UIView

@property (strong, nonatomic) IBInspectable UIColor *topColor;
@property (strong, nonatomic) IBInspectable UIColor *bottomColor;

- (void)updateColor;

@end
