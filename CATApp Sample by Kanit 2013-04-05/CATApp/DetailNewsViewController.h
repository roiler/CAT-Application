//
//  DetailNewsViewController.h
//  CATApp
//
//  Created by RoileR on 5/15/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailNewsViewController : UIViewController
@property (retain, nonatomic) IBOutlet UILabel *lblTitle;
@property (retain, nonatomic) IBOutlet UITextView *lblDescription;
@property (retain, nonatomic) IBOutlet UIImageView *iImage;

@property (strong, nonatomic) NSString *iURL;
@property (strong, nonatomic) NSString *iTitle;
@property (strong, nonatomic) NSString *iDescription;
@property (strong, nonatomic) NSString *iPic;
@property (strong, nonatomic) NSString *ipubDate;
@end
