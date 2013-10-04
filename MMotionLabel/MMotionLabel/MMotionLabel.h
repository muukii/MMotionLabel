//
//  MMotionLabel.h
//  MMotionLabel
//
//  Created by Muukii on 10/5/13.
//  Copyright (c) 2013 Muukii. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum MMotionType : NSInteger {
    MMotionTypeFade
}MMotionType;
@interface MMotionLabel : UILabel

@property (nonatomic) MMotionType motionType;
@end
