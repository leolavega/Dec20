//
//  AppDelegate.h
//  Dec20
//
//  Created by Leonardo Lavega on 12/20/12.
//  Copyright (c) 2012 Leonardo Lavega. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TableViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
	UINavigationController *navigationController;
	TableViewController *tableViewController;
}

@property (strong, nonatomic) UIWindow *window;

@end
