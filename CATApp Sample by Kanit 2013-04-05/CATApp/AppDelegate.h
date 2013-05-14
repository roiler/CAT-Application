//
//  AppDelegate.h
//  CATApp
//
//  Created by RoileR on 4/4/13.
//  Copyright (c) 2013 Kanit Chanprasert. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NewsViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    NewsViewController *viewController;
}


@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) IBOutlet NewsViewController *viewController;


@end
