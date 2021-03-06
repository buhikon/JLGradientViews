//
//  JLHorizontalGradientView.m
//
//  Version 0.2.0
//
//  Created by Joey L. on 09/03/2016.
//  Copyright (c) 2016 Joey L. All rights reserved.
//
//  https://github.com/buhikon/JLGradientViews
//
#if ! __has_feature(objc_arc)
#error This file must be compiled with ARC. Either turn on ARC for the project or use -fobjc-arc flag
#endif

#import "JLHorizontalGradientView.h"

@interface JLHorizontalGradientView ()
@property (weak, nonatomic) CAGradientLayer *gradientLayer;
@end

@implementation JLHorizontalGradientView

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self initGradient];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initGradient];
    }
    return self;
}

- (void)initGradient {
    NSArray *gradientColors = [NSArray arrayWithObjects:(id)self.leftColor.CGColor, (id)self.rightColor.CGColor, nil];
    NSArray *gradientLocations = [NSArray arrayWithObjects:[NSNumber numberWithInt:0.0],[NSNumber numberWithInt:1.0], nil];
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.colors = gradientColors;
    gradientLayer.locations = gradientLocations;
    gradientLayer.startPoint = CGPointMake(0.0, 0.5);
    gradientLayer.endPoint = CGPointMake(1.0, 0.5);
    gradientLayer.frame = self.frame;
    [self.layer insertSublayer:gradientLayer atIndex:0];
    
    self.gradientLayer = gradientLayer;
}

- (void)layoutSublayersOfLayer:(CALayer *)layer {
    [super layoutSublayersOfLayer:layer];
    self.gradientLayer.frame = self.bounds;
}

#pragma mark - public methods

- (void)updateColor {
    NSArray *gradientColors = [NSArray arrayWithObjects:(id)self.leftColor.CGColor, (id)self.rightColor.CGColor, nil];
    self.gradientLayer.colors = gradientColors;
}

@end
