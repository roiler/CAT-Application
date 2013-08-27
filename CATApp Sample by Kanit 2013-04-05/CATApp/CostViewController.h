//
//  CostViewController.h
//  CATApp
//
//  Created by RoileR on 8/21/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CostViewController : UIViewController <UIWebViewDelegate>
{
    
    IBOutlet UIWebView *webView;
}
@property (nonatomic, retain) UIWebView *webView;
@property (strong, nonatomic) NSString *iURL;
@end
