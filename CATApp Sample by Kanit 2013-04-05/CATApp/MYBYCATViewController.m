//
//  MYBYCATViewController.m
//  CATApp
//
//  Created by RoileR on 8/21/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import "MYBYCATViewController.h"
#import "CostViewController.h"
@interface MYBYCATViewController ()

@end

@implementation MYBYCATViewController

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
    
    
    
    NSString *webNavi = @"http://www.mybycat.com/products.php?id=14&sid=82";
    
    
    CostViewController *view = [[CostViewController alloc] init];
    
    
    view.iURL = webNavi;
    
    [self.navigationController pushViewController:view animated:YES];
}
- (IBAction)TouchbtnLinkUsage
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://myservice.mybycat.com"]];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
