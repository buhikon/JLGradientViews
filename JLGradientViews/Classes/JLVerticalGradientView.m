//
//  JLVerticalGradientView.m
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

#import "JLVerticalGradientView.h"

@interface JLVerticalGradientView ()
@property (weak, nonatomic) CAGradientLayer *gradientLayer;
@end

@implementation JLVerticalGradientView

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    NSArray *gradientColors = [NSArray arrayWithObjects:(id)self.topColor.CGColor, (id)self.bottomColor.CGColor, nil];
    NSArray *gradientLocations = [NSArray arrayWithObjects:[NSNumber numberWithInt:0.0],[NSNumber numberWithInt:1.0], nil];
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.colors = gradientColors;
    gradientLayer.locations = gradientLocations;
    gradientLayer.startPoint = CGPointMake(0.5, 0.0);
    gradientLayer.endPoint = CGPointMake(0.5, 1.0);
    gradientLayer.frame = self.frame;
    [self.layer insertSublayer:gradientLayer atIndex:0];
    
    self.gradientLayer = gradientLayer;
}

- (void)layoutSublayersOfLayer:(CALayer *)layer {
    [super layoutSublayersOfLayer:layer];
    self.gradientLayer.frame = self.bounds;
}

@end
