//
//  DetailNewsViewController.m
//  CATApp
//
//  Created by RoileR on 5/15/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import "DetailNewsViewController.h"


@interface DetailNewsViewController ()

@end

@implementation DetailNewsViewController
@synthesize iURL;
@synthesize iTitle;
@synthesize iDescription;
@synthesize lblDescription;
@synthesize lblTitle;
@synthesize iPic;
@synthesize iImage;


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
 
    lblTitle.text = iTitle;
    lblDescription.text = [NSString stringWithFormat:@"     %@",iDescription];
    
    UIImage* myImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:iPic]]];

    iImage.image = myImage;
    [iTitle retain];
    [iDescription retain];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [lblTitle release];
    [iTitle release];
    [iDescription release];
    [lblDescription release];
    [iImage release];
    [super dealloc];
}
@end
