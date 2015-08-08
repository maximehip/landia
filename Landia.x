//
//  Landia.x
//  Landia
//
//  Created by maximehip on 04.07.2015.
//  Copyright (c) 2015 maximehip. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIWindow+Private.h>

%hook UIWindow

-(BOOL)_shouldAutorotateToInterfaceOrientation:(int)arg1 {
	return true;
}
%end

%hook UIViewController

-(BOOL)_withSupportedInterfaceOrientation:(long long)arg1 apply:(id)arg2 {
	return true;
}

%end

%hook CyteTabBarController 

-(char)shouldAutorotateToInterfaceOrientation:(int)arg1 {
	return true;
}

%end

%hook CyteViewController 

-(char)shouldAutorotateToInterfaceOrientation:(int)arg1 {
	return true;
	arg1 = 1;
}

-(char)shouldAutorotate{
	return true;
}

%end

%hook UITabBarControllerDelegate 

-(int)tabBarControllerPreferredInterfaceOrientationForPresentation:(id)arg1{
	return 1;
}

%end