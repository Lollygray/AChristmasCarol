//
//  ChangedViewController.m
//  A Christmas Carol
//
//  Created by Lori Graybill on 11/30/12.
//  Copyright (c) 2012 Lori Graybill. All rights reserved.
//

#import "ChangedViewController.h"

@interface ChangedViewController ()

@end

@implementation ChangedViewController
@synthesize popover, changescrooge, changebob, changefamily;

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

- (IBAction)changeScroogeButton:(id)sender {
    changescrooge = [[ChangeHappyScroogeViewController alloc]init];
    [changescrooge setContentSizeForViewInPopover:CGSizeMake(216, 50)];
    popover = [[UIPopoverController alloc] initWithContentViewController:changescrooge];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(150, 200, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)changeBobButton:(id)sender {
    changebob = [[ChangeBobRaiseViewController alloc]init];
    [changebob setContentSizeForViewInPopover:CGSizeMake(180, 50)];
    popover = [[UIPopoverController alloc] initWithContentViewController:changebob];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(580, 200, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)changeFamilyButton:(id)sender {
    changefamily = [[ChangeFamilyViewController alloc]init];
    [changefamily setContentSizeForViewInPopover:CGSizeMake(350, 50)];
    popover = [[UIPopoverController alloc] initWithContentViewController:changefamily];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(380, 520, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}
@end
