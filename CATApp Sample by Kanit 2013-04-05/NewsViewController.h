//
//  NewsViewController.h
//  CATApp
//
//  Created by RoileR on 5/10/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMLStringFile.h"
@interface NewsViewController : UIViewController <NSXMLParserDelegate>
{
    NSMutableArray *iDesc,*iPic;
    NSMutableArray *iTitle,*iLink;
    
    
	IBOutlet UITableView *tableview;
	
	//mutable array to store data from rss feed and display in table view
	NSMutableArray *rssOutputData;
    
    NSMutableString *nodecontent;
    
    //declare the object of nsxml parse which will we use later for parsing
    
    NSXMLParser *xmlParserObject;
    
    
    //declare the object of nsobject class
    
    XMLStringFile *xmlStringFileObject;
    NSString *eUrl;

	
	
	//to store data from xml node
		
}
//@property(nonatomic,retain)IBOutlet UITableView *tableview;


@end
