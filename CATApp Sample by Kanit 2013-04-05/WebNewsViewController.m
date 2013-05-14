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
   
    UIWebView *WebNews = [[UIWebView alloc] initWithFrame:self.view.frame];
    NSURL *url = [NSURL URLWithString:iURL];
    NSMutableURLRequest *urlReq = [[NSMutableURLRequest alloc] initWithURL:url];
    [self.view addSubview:WebNews];
    [WebNews loadRequest:urlReq];
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
