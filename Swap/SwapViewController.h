//
//  SwapViewController.h
//  Swap
//
//  Created by Saurabh Jain on 12/11/11.
//  Copyright 2011 USC Student. All rights reserved.
//

#import <UIKit/UIKit.h>
#define degreesToRadian(x) (M_PI * (x) / 180.0)

@interface SwapViewController : UIViewController {
    
    IBOutlet UIView *landscape;
    IBOutlet UIView *portrait;
    
    // Foo
    IBOutlet UIButton *landscapeFooButton;
    IBOutlet UIButton *portraitFooButton;
    
    // Bar
    IBOutlet UIButton *landscaperBarButton;
    IBOutlet UIButton *portraitBarButton;
}

@property (nonatomic, retain) UIView *landscape;
@property (nonatomic, retain) UIView *portrait;
@property (nonatomic, retain) UIButton *landscapeFooButton;
@property (nonatomic, retain) UIButton *portraitFooButton;
@property (nonatomic, retain) UIButton *landscapeBarButton;
@property (nonatomic, retain) UIButton *portraitBarButton;

-(IBAction)buttonPressed:(id)sender; 

@end
