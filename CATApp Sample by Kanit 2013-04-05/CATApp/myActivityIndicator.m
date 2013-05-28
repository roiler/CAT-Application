//
//  myActivityIndicator.m
//  CATApp
//
//  Created by RoileR on 5/22/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import "myActivityIndicator.h"

@interface myActivityIndicator ()

@end

@implementation myActivityIndicator
@synthesize actIndicator;
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
    [actIndicator startAnimating];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillDisappear:(BOOL)animated
{
    [actIndicator stopAnimating];
}
- (void)dealloc {
    [super dealloc];
}
@end
