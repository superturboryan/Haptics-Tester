//
//  ViewController.m
//  Haptics Tester
//
//  Created by Ryan Forsyth on 2019-11-27.
//  Copyright © 2019 Ryan Forsyth. All rights reserved.
//

#import "ViewController.h"
#import "HapticsManager.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)heavy:(UIButton *)sender {
    [HapticsManager.shared impactWithStyle:UIImpactFeedbackStyleHeavy];
}

- (IBAction)medium:(id)sender {
    [HapticsManager.shared impactWithStyle:UIImpactFeedbackStyleMedium];
}

- (IBAction)light:(id)sender {
    [HapticsManager.shared impactWithStyle:UIImpactFeedbackStyleLight];
}

- (IBAction)rigid:(id)sender {
    if (@available(iOS 13.0, *)) {
        [HapticsManager.shared impactWithStyle:UIImpactFeedbackStyleRigid];
    } else {
        [HapticsManager.shared impactWithStyle:UIImpactFeedbackStyleMedium];
    }
}

- (IBAction)soft:(id)sender {
    if (@available(iOS 13.0, *)) {
        [HapticsManager.shared impactWithStyle:UIImpactFeedbackStyleSoft];
    } else {
        [HapticsManager.shared impactWithStyle:UIImpactFeedbackStyleMedium];
    }
}

- (IBAction)select:(id)sender {
    [HapticsManager.shared selection];
}

- (IBAction)success:(id)sender {
    [HapticsManager.shared notificationWithType:UINotificationFeedbackTypeSuccess];
}

- (IBAction)warning:(id)sender {
    [HapticsManager.shared notificationWithType:UINotificationFeedbackTypeWarning];
}

- (IBAction)failure:(id)sender {
    [HapticsManager.shared notificationWithType:UINotificationFeedbackTypeError];
}




@end
