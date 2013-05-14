//
//  XMLStringFile.m
//  XMLParser
//
//  Created by Ravi Dixit on 20/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "XMLStringFile.h"


@implementation XMLStringFile
@synthesize xmllink,xmltitle,xmldescription;

-(void)dealloc
{
	[xmllink release];
	//released link twice
	[xmltitle release];
    [xmldescription release];
	[super dealloc];
	
	
}

@end
