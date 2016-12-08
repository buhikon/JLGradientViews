//
//  JLGradientView.m
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

#import "JLGradientView.h"

@interface JLGradientView ()
@property (weak, nonatomic) CAGradientLayer *gradientLayer;
@end

@implementation JLGradientView

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
    NSArray *gradientColors = [NSArray arrayWithObjects:(id)self.startColor.CGColor, (id)self.endColor.CGColor, nil];
    NSArray *gradientLocations = [NSArray arrayWithObjects:[NSNumber numberWithInt:0.0],[NSNumber numberWithInt:1.0], nil];
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.colors = gradientColors;
    gradientLayer.locations = gradientLocations;
    gradientLayer.startPoint = self.startPoint;
    gradientLayer.endPoint = self.endPoint;
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
    NSArray *gradientColors = [NSArray arrayWithObjects:(id)self.startColor.CGColor, (id)self.endColor.CGColor, nil];
    self.gradientLayer.colors = gradientColors;
}
- (void)updatePoint {
    self.gradientLayer.startPoint = self.startPoint;
    self.gradientLayer.endPoint = self.endPoint;
}

@end
