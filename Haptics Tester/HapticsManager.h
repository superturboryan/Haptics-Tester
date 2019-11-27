//
//  HapticsManager.h
//  Haptics Tester
//
//  Created by Ryan Forsyth on 2019-11-27.
//  Copyright © 2019 Ryan Forsyth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HapticsManager : NSObject

+ (HapticsManager*)shared;

-(void)notificationWithType:(UINotificationFeedbackType)type;
-(void)selection;
-(void)impactWithStyle:(UIImpactFeedbackStyle)style;

@end

NS_ASSUME_NONNULL_END
