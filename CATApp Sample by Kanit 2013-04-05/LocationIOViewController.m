//
//  LocationIOViewController.m
//  CATApp
//
//  Created by RoileR on 5/10/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import "LocationIOViewController.h"
#import "ViewController.h"

@interface LocationIOViewController ()


@end

@implementation LocationIOViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)callcatcontact {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://1322"]];
}
- (IBAction)callcatlaksi {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://021043000"]];
}
- (IBAction)callcattower {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://021041000"]];
}
- (IBAction)callcatnont {
     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://021047011"]];
}
- (IBAction)callcatsalegov {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://021043717"]];
}
- (IBAction)callcatsalecompany {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://021044750"]];
}
- (IBAction)callcatsalebusinessdomestic {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://021044408"]];
}
- (IBAction)callcatsalebusinessinter {
      [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://021043883"]];
}
- (IBAction)callcatsaleinternet {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://021044988"]];
}
- (IBAction)callcatsalewireless {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://021043318"]];
}
- (IBAction)callcatnorth {
         [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://053244663"]];
}
- (IBAction)callcatcenter {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://056228558"]];
}
- (IBAction)callcatnortheast {
     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://043241560"]];
}
- (IBAction)callcateast {
     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://033004301"]];    
}
- (IBAction)callcatwest {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://032326668"]];    
}
- (IBAction)callcatsouth {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://074231080"]];     
}


- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view.
}
//-(IBAction)call_catlaksi:(id)sender {
   
    //lblCATlaksi.text = @"call";
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://021043000"]];
    
//}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    //[_lblCATlaksi release];
    [super dealloc];
}

@end
