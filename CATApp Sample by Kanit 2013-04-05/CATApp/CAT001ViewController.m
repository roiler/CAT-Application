//
//  CAT001ViewController.m
//  CATApp
//
//  Created by RoileR on 8/21/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import "CAT001ViewController.h"
#import "CostViewController.h"

@interface CAT001ViewController ()

@end

@implementation CAT001ViewController

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
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.cattelecom.com/web_data/uploads/file/service/CAT%20001_232%20dest_Oct%2011.pdf"]];
    
    
    NSString *webNavi = @"http://www.cattelecom.com/web_data/uploads/file/service/CAT%20001_232%20dest_Oct%2011.pdf";
    
    
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
