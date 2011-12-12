//
//  SwapAppDelegate.h
//  Swap
//
//  Created by Saurabh Jain on 12/11/11.
//  Copyright 2011 USC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwapViewController;

@interface SwapAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SwapViewController *viewController;

@end
