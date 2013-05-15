//
//  WebNewsViewController.m
//  CATApp
//
//  Created by RoileR on 5/14/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import "WebNewsViewController.h"
#import "ViewController.h"
@interface WebNewsViewController ()

@end

@implementation WebNewsViewController
@synthesize WebNews;
@synthesize iURL;


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
  
    
    
    [self.navigationItem setTitle:@"Green"];

    float w = self.view.frame.size.width;
    UILabel *helloLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, w, 40)];
    [helloLabel setTextColor:[UIColor whiteColor]];
    [helloLabel setBackgroundColor:[UIColor clearColor]];
    [helloLabel setTextAlignment:NSTextAlignmentCenter];
    [helloLabel setText:[NSURL URLWithString:iURL]];
    [self.view addSubview:helloLabel];
    //[helloLabel release];

    
    
    
    
//    UIWebView *WebNews = [[UIWebView alloc] initWithFrame:self.view.frame];
//    NSURL *url = [NSURL URLWithString:iURL];
//    NSMutableURLRequest *urlReq = [[NSMutableURLRequest alloc] initWithURL:url];
//    [self.view addSubview:WebNews];
//    [WebNews loadRequest:urlReq];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [WebNews release];
    [super dealloc];
}
@end
