//
//  WebNewsViewController.h
//  CATApp
//
//  Created by RoileR on 5/14/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebNewsViewController : UIViewController{
    //UIWebView *WebNews;
    //NSString *iURL;
}
@property (retain, nonatomic) IBOutlet UIWebView *WebNews;
@property (strong, nonatomic) NSString *iURL;


@end
