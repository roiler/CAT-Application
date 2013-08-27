//
//  CAT2CallViewController.m
//  CATApp
//
//  Created by RoileR on 8/21/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import "CAT2CallViewController.h"
#import "CostViewController.h"
@interface CAT2CallViewController ()

@end

@implementation CAT2CallViewController

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
	// Do any additional setup after loading the view.
}
- (IBAction)TouchbtnLinkCost
{
    
    
    
    NSString *webNavi = @"http://www.cattelecom.com/web_data/uploads/file/service/CAT2Call%20Rate%202013.pdf";
    
    
    CostViewController *view = [[CostViewController alloc] init];
    
    
    view.iURL = webNavi;
    
    [self.navigationController pushViewController:view animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
