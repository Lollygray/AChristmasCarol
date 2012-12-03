//
//  PastViewController.m
//  A Christmas Carol
//
//  Created by Lori Graybill on 11/30/12.
//  Copyright (c) 2012 Lori Graybill. All rights reserved.
//

#import "PastViewController.h"

@interface PastViewController ()

@end

@implementation PastViewController
@synthesize popover, fezziwig, pastghost, pastscrooge, belle, greedscrooge;

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

- (IBAction)fezziwigButton:(id)sender {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        fezziwig = [[PastFezziwigViewController alloc]init];
    });
    [fezziwig setContentSizeForViewInPopover:CGSizeMake(275, 50)];
    
    popover = [[UIPopoverController alloc] initWithContentViewController:fezziwig];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(160, 340, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)pastGhostButton:(id)sender {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        pastghost = [[PastGhostViewController alloc]init];
    });
    [pastghost setContentSizeForViewInPopover:CGSizeMake(275, 50)];
    
    popover = [[UIPopoverController alloc] initWithContentViewController:pastghost];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(360, 160, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)pastScroogeButton:(id)sender {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        pastscrooge = [[PastScroogeViewController alloc]init];
    });
    [pastscrooge setContentSizeForViewInPopover:CGSizeMake(200, 50)];
    
    popover = [[UIPopoverController alloc] initWithContentViewController:pastscrooge];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(475, 450, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)belleButton:(id)sender {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        belle = [[BelleViewController alloc]init];
    });
    [belle setContentSizeForViewInPopover:CGSizeMake(255, 50)];
    
    popover = [[UIPopoverController alloc] initWithContentViewController:belle];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(195, 700, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)greedScroogeButton:(id)sender {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        greedscrooge= [[PastGreedScroogeViewController alloc]init];
    });
    [greedscrooge setContentSizeForViewInPopover:CGSizeMake(327, 50)];
    
    popover = [[UIPopoverController alloc] initWithContentViewController:greedscrooge];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(525, 700, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

@end
