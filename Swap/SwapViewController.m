//
//  SwapViewController.m
//  Swap
//
//  Created by Saurabh Jain on 12/11/11.
//  Copyright 2011 USC Student. All rights reserved.
//

#import "SwapViewController.h"

@implementation SwapViewController
@synthesize landscape;
@synthesize portrait;
@synthesize landscapeBarButton;
@synthesize landscapeFooButton;
@synthesize portraitBarButton;
@synthesize portraitFooButton;

- (void) willAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    
    UIInterfaceOrientation toOrientation = self.interfaceOrientation;
    
    if(toOrientation == UIInterfaceOrientationPortrait)
    {
        self.view = self.portrait;
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degreesToRadian(0));
        self.view.bounds = CGRectMake(0.0, 0.0, 300.0, 480.0);
    }
    else if(toOrientation == UIInterfaceOrientationLandscapeLeft)
    {
        self.view = self.landscape;
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degreesToRadian(-90));
        self.view.bounds = CGRectMake(0.0, 0.0, 460.0, 320.0);
    }
    else if(toOrientation == UIInterfaceOrientationPortraitUpsideDown)
    {
        self.view = self.portrait;
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degreesToRadian(180));
        self.view.bounds = CGRectMake(0.0, 0.0, 300.0, 480.0);
    }
    else if(toOrientation == UIInterfaceOrientationLandscapeRight)
    {
        self.view = self.landscape;
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degreesToRadian(90));
        self.view.bounds = CGRectMake(0.0, 0.0, 460.0, 320.0);
    }
}

- (IBAction)buttonPressed:(id)sender {
    
    if(sender == portraitFooButton || sender == landscapeFooButton)
    {
        portraitFooButton.hidden = YES;
        landscapeFooButton.hidden = YES;
    }
    else
    {
        portraitBarButton.hidden = YES;
        landscapeBarButton.hidden = YES;
    }
}

- (void)dealloc
{
    [portrait release];
    [landscapeFooButton release];
    [portraitFooButton release];
    [landscaperBarButton release];
    [portraitBarButton release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
    return YES;
}

@end
