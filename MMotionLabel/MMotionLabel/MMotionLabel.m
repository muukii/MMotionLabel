//
//  MMotionLabel.m
//  MMotionLabel
//
//  Created by Muukii on 10/5/13.
//  Copyright (c) 2013 Muukii. All rights reserved.
//

#import "MMotionLabel.h"

#define FADEANIMATION_DURATION 0.1f
@implementation MMotionLabel
{
    NSString *_willChangeText;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setText:(NSString *)text {
    _willChangeText = text;
    if ([self.text compare:text]) {
        switch (self.motionType) {
            case MMotionTypeFade:
                [self fadeAnimation];
                break;
                
            default:
                break;
        }
    }
}

#pragma mark Animation Method

- (void)fadeAnimation {
    [UIView animateWithDuration:FADEANIMATION_DURATION animations:^{
        self.alpha = 0;
    } completion:^(BOOL finished) {
        [super setText:_willChangeText];
        [UIView animateWithDuration:FADEANIMATION_DURATION animations:^{
            self.alpha = 1;
        } completion:^(BOOL finished) {
            
        }];
    }];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
