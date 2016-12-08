//
//  JLHorizontalGradientView.h
//
//  Version 0.2.0
//
//  Created by Joey L. on 09/03/2016.
//  Copyright (c) 2016 Joey L. All rights reserved.
//
//  https://github.com/buhikon/JLGradientViews
//

#import <UIKit/UIKit.h>

@interface JLHorizontalGradientView : UIView

@property (strong, nonatomic) IBInspectable UIColor *leftColor;
@property (strong, nonatomic) IBInspectable UIColor *rightColor;

- (void)updateColor;

@end
