//
//  NewsViewController.m
//  CATApp
//
//  Created by RoileR on 5/10/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import "NewsViewController.h"
#import "WebNewsViewController.h"
#import "DetailNewsViewController.h"
#import "myActivityIndicator.h"

NSInteger myTitle,myDesc,myPic,myLink;
@implementation NewsViewController{
    dispatch_queue_t backgroundQueue;
    UIBackgroundTaskIdentifier backgroundTaskIdentifier;

}
@synthesize vControllerHome;
//- (id)initWithStyle:(UITableViewStyle)style
//{
//    self = [super initWithStyle:style];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
//    
    vControllerHome = [[myActivityIndicator alloc] initWithNibName:@"myActivityIndicator" bundle:nil];
    vControllerHome.view.frame =CGRectMake(0, 0, 320, self.view.frame.size.height);
    [self.view addSubview:vControllerHome.view];

    
    iTitle = [[NSMutableArray alloc] init];
    iDesc = [[NSMutableArray alloc]init];
    iPic  = [[NSMutableArray alloc]init];
    iLink = [[NSMutableArray alloc]init];
    
    
    
    NSLog(@"Before Loadata");
    
        NSString *urlString = @"http://www.cattelecom.com/web_data/uploads/xml/export.php?lang=th";

       NSURL *url = [NSURL URLWithString:urlString];
       //NSURLRequest *request = [NSURLRequest requestWithURL:url];
       //[[[NSURLConnection alloc] initWithRequest:request delegate:self] autorelease];
       
    backgroundQueue = dispatch_queue_create("com,mmios,backgroundtask", NULL);
    
    dispatch_async(backgroundQueue,
                    ^{

                       NSLog(@"Loading Data");
                       NSData *xmlData=[[NSData alloc]initWithContentsOfURL:url];
                       NSLog(@"Loaded Data");
                       NSLog(@"Parsing Data");
                       xmlParserObject =[[NSXMLParser alloc]initWithData:xmlData];
                       [xmlParserObject setDelegate:self];
                       [xmlParserObject parse];
                       [xmlData release];
                       NSLog(@"Parsed Data");
                       
              dispatch_async(dispatch_get_main_queue(), ^{
    
                    [self.tableview reloadData];
                    [vControllerHome.view removeFromSuperview];
                    });
                
                       
                     
                    }
                  );

}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName attributes:(NSDictionary *)attributeDict
{
    
	//if element name is equat to item then only i am assingning memory to the NSObject class
    
    if ([elementName isEqualToString:@"enclosure"]) {
        eUrl = [attributeDict objectForKey:@"url"];
        
    }
	if([elementName isEqualToString:@"item"]){
        
		xmlStringFileObject =[[XMLStringFile alloc]init];
        //
        myDesc = 0;
        myPic = 0;
        myLink = 0;
        myTitle = 0;
        
	}
    
	
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
	//whatever data i am getting from node i am appending it to the nodecontent variable
	[nodecontent appendString:[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]];
    //NSLog(@"node content = %@",nodecontent);
    
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
	//I am saving my nodecontent data inside the property of XMLString File class
	
	if([elementName isEqualToString:@"title"]){
		xmlStringFileObject.xmltitle=nodecontent;
       NSArray *node = [[NSArray alloc] initWithObjects:nodecontent, nil];
        [iTitle addObjectsFromArray:node];
        myTitle = 1;
	}
	else if([elementName isEqualToString:@"description"]){
		xmlStringFileObject.xmldescription=nodecontent;
        NSArray *nodeDesc = [[NSArray alloc] initWithObjects:nodecontent, nil];
        [iDesc addObjectsFromArray:nodeDesc];
        myDesc = 1;
	}
    else if([elementName isEqualToString:@"link"]){
		xmlStringFileObject.xmldescription=nodecontent;
        NSArray *nodeLink = [[NSArray alloc] initWithObjects:nodecontent, nil];
        [iLink addObjectsFromArray:nodeLink];
        myLink = 1;
	}
    else if([elementName isEqualToString:@"enclosure"]){
        
        xmlStringFileObject.xmllink=[@"http://www.cattelecom.com" stringByAppendingString:eUrl];
        NSArray *nodePic = [[NSArray alloc] initWithObjects:[@"http://www.cattelecom.com" stringByAppendingString:eUrl], nil];
        [iPic addObjectsFromArray:nodePic];
        myPic = 1;
        //xmlStringFileObject.xmllink=nodecontent;
	}
    
	
	//finally when we reaches the end of tag i am adding data inside the NSMutableArray
	if([elementName isEqualToString:@"item"]){
        
		[rssOutputData addObject:xmlStringFileObject];
		[xmlStringFileObject release];
        xmlStringFileObject = nil;

	}
	//release the data from mutable string variable
	[nodecontent release];
    
	//reallocate the memory to get new content data from file
	nodecontent=[[NSMutableString alloc]init];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

	return[iTitle count];
    
	
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    
    //---------------------
 	static NSString *CellIdentifier = @"Cell";
	
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
		
	// If no cell is available, create a new one using the given identifier
	if (cell == nil) {

        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
        cell.textLabel.text = [iTitle objectAtIndex:indexPath.row];
        cell.detailTextLabel.text = [iDesc objectAtIndex:indexPath.row+1];
        //
                                 
//        UIImage* myImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[iPic objectAtIndex:indexPath.row]]]];
//        cell.imageView.image = myImage;
        if ([iPic objectAtIndex:indexPath.row] != Nil) {
            dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0ul);
            
            dispatch_async(queue, ^{
                NSLog(@"Before LoadImage");
                UIImage* myImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[iPic objectAtIndex:indexPath.row]]]];
                
                NSLog(@"After LoadImage");
                dispatch_async(dispatch_get_main_queue(), ^{
                    [[cell imageView] setImage:myImage];
                    [cell setNeedsLayout];
                    NSLog(@"Alloc Image");
                });
                
            });
            
            dispatch_release(queue);
        }

        
        
	}else {

        
        //cell.textLabel.text = [iTitle objectAtIndex:indexPath.row];
        //cell.detailTextLabel.text = [iDesc objectAtIndex:indexPath.row];
    }
    
	// Set up the cell
	[cell.textLabel setFont:[UIFont fontWithName:@"Verdana" size:12]];
	[cell.detailTextLabel setFont:[UIFont fontWithName:@"Verdana" size:12]];
//	cell.textLabel.text=[[rssOutputData objectAtIndex:indexPath.row]xmltitle];
//	cell.detailTextLabel.text=[[rssOutputData objectAtIndex:indexPath.row]xmldescription];
    //cell.textLabel.text= [iTitle objectAtIndex:indexPath.row];
    //cell.detailTextLabel.text = [iDesc objectAtIndex:indexPath.row];
    cell.detailTextLabel.numberOfLines = 2;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
//    UIImage* myImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:
//                                               [NSURL URLWithString: [[rssOutputData objectAtIndex:indexPath.row]xmllink]]]];
//    UIImage* myImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[iPic objectAtIndex:indexPath.row]]]];
//    cell.imageView.image = myImage;
   
    
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    
    
    DetailNewsViewController *view = [[DetailNewsViewController alloc] init];


    
    view.iURL = [iLink objectAtIndex:indexPath.row];
    view.iTitle = [iTitle objectAtIndex:indexPath.row];
    view.iDescription = [iDesc objectAtIndex:indexPath.row+1];
    view.iPic = [iPic objectAtIndex:indexPath.row];
    
    
    [self.navigationController pushViewController:view animated:YES];
    
    //NSLog(@"Selected Row : %d",indexPath.row);

   

    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)viewDidUnload
{
    
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    //[activityIndicator stopAnimating];
}
//- (void)dealloc {
//	[rssOutputData release];
//	[xmlParserObject release];
//    [super dealloc];
//}

- (void)dealloc {
  
    dispatch_release(backgroundQueue);
    [super dealloc];
}
@end
