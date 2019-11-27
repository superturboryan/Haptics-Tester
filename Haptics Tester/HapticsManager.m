//
//  HapticsManager.m
//  Haptics Tester
//
//  Created by Ryan Forsyth on 2019-11-27.
//  Copyright © 2019 Ryan Forsyth. All rights reserved.
//

#import "HapticsManager.h"

@implementation HapticsManager

+ (HapticsManager *) shared {
    static dispatch_once_t onceToken;
    static HapticsManager *instance = nil;
    dispatch_once(&onceToken, ^{
        instance = [[HapticsManager alloc] init];
    });
    return instance;
}

- (void)notificationWithType:(UINotificationFeedbackType)type{
    UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc]init];
    [generator notificationOccurred:type];
    generator = nil;
}

-(void)selection {
    UISelectionFeedbackGenerator *generator = [[UISelectionFeedbackGenerator alloc]init];
    [generator selectionChanged];
    generator = nil;
}

-(void)impactWithStyle:(UIImpactFeedbackStyle)style {
    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:style];
    [generator impactOccurred];
    generator = nil;
}

@end
