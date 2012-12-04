//
//  FutureViewController.m
//  A Christmas Carol
//
//  Created by Lori Graybill on 11/30/12.
//  Copyright (c) 2012 Lori Graybill. All rights reserved.
//

#import "FutureViewController.h"

@interface FutureViewController ()

@end

@implementation FutureViewController
@synthesize popover, futureghost, futuregrave, futurebob;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ghostFutureButton:(id)sender {
    futureghost = [[FutureGhostViewController alloc]init];
    [futureghost setContentSizeForViewInPopover:CGSizeMake(125, 50)];
    popover = [[UIPopoverController alloc] initWithContentViewController:futureghost];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(380, 200, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)futureGraveButton:(id)sender {
    futuregrave = [[FutureGraveViewController alloc]init];
    [futuregrave setContentSizeForViewInPopover:CGSizeMake(200, 50)];
    popover = [[UIPopoverController alloc] initWithContentViewController:futuregrave];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(200, 660, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)futureBobButton:(id)sender {
    futurebob = [[FutureBobViewController alloc]init];
    [futurebob setContentSizeForViewInPopover:CGSizeMake(144, 50)];
    popover = [[UIPopoverController alloc] initWithContentViewController:futurebob];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(525, 475, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];

}
@end
