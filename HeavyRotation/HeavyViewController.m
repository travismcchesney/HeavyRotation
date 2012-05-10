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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    // Return YES if incoming orientation is Portrait
    // or either of the Landscapes, otherwise, return NO
    return (toInterfaceOrientation == UIInterfaceOrientationPortrait) ||
    UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}

- (void)viewDidLoad
{
    [slider setAutoresizingMask:UIViewAutoresizingFlexibleBottomMargin |
     UIViewAutoresizingFlexibleWidth];
    
    [imageView setAutoresizingMask:UIViewAutoresizingFlexibleHeight |
     UIViewAutoresizingFlexibleWidth];
    
    [leftButton setAutoresizingMask:UIViewAutoresizingFlexibleTopMargin |
     UIViewAutoresizingFlexibleRightMargin];
     
    [rightButton setAutoresizingMask:UIViewAutoresizingFlexibleTopMargin |
     UIViewAutoresizingFlexibleLeftMargin];
}

@end
