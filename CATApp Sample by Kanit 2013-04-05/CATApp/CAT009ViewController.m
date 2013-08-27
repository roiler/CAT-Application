//
//  CAT009ViewController.m
//  CATApp
//
//  Created by RoileR on 8/21/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import "CAT009ViewController.h"
#import "CostViewController.h"
@interface CAT009ViewController ()

@end

@implementation CAT009ViewController

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

    
    
    NSString *webNavi = @"http://www.cattelecom.com/web_data/uploads/file/CAT%20009%201%20Jul-31%20Dec%202013.pdf";
    
    
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
