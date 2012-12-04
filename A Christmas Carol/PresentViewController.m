//
//  PresentViewController.m
//  A Christmas Carol
//
//  Created by Lori Graybill on 11/30/12.
//  Copyright (c) 2012 Lori Graybill. All rights reserved.
//

#import "PresentViewController.h"


@interface PresentViewController ()

@end

@implementation PresentViewController
@synthesize popover, presentghost, presenttim, presentmartha, presentscrooge, presentfamily;

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

- (IBAction)presentGhostButton:(id)sender {
    presentghost = [[PresentGhostViewController alloc]init];
    [presentghost setContentSizeForViewInPopover:CGSizeMake(300, 50)];
    popover = [[UIPopoverController alloc] initWithContentViewController:presentghost];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(380, 125, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)presentTimButton:(id)sender {
    presenttim = [[PresentTinyTimViewController alloc]init];
    [presenttim setContentSizeForViewInPopover:CGSizeMake(205, 50)];
    popover = [[UIPopoverController alloc] initWithContentViewController:presenttim];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(380, 620, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)presentMarthaButton:(id)sender {
    presentmartha = [[PresentMarthaViewController alloc]init];
    [presentmartha setContentSizeForViewInPopover:CGSizeMake(356, 50)];
    popover = [[UIPopoverController alloc] initWithContentViewController:presentmartha];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(150, 340, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)presentScroogeButton:(id)sender {
    presentscrooge = [[PresentScroogeViewController alloc]init];
    [presentscrooge setContentSizeForViewInPopover:CGSizeMake(253, 50)];
    popover = [[UIPopoverController alloc] initWithContentViewController:presentscrooge];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(380, 340, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)presentFamilyButton:(id)sender {
    presentfamily = [[PresentCratchettFamilyViewController alloc]init];
    [presentfamily setContentSizeForViewInPopover:CGSizeMake(206, 50)];
    popover = [[UIPopoverController alloc] initWithContentViewController:presentfamily];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(620, 340, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}
@end
