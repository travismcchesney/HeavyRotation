//
//  HeavyViewController.m
//  HeavyRotation
//
//  Created by Travis McChesney on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HeavyViewController.h"

@interface HeavyViewController ()

@end

@implementation HeavyViewController

@synthesize leftRectCenter;

- (void)viewDidLoad
{
    leftRectCenter = [button center];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    // Return YES if incoming orientation is Portrait
    // or either of the Landscapes, otherwise, return NO
    return (toInterfaceOrientation == UIInterfaceOrientationPortrait) ||
    UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    CGRect bounds = [[self view] bounds];
    
    if (UIInterfaceOrientationIsLandscape(toInterfaceOrientation)) {
        [button setCenter:CGPointMake(bounds.size.width - 50, bounds.size.height / 2)];
    } else {
        [button setCenter:leftRectCenter];
    }
}

@end
