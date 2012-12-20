//
//  ViewController.m
//  Dec20
//
//  Created by Leonardo Lavega on 12/20/12.
//  Copyright (c) 2012 Leonardo Lavega. All rights reserved.
//

#import "ViewController.h"
#import "PhotoAlbumView.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		
    }
    return self;
}

- (id)initWithArray: (NSArray*) arr withTitle:(NSString*) t{
	self = [super initWithNibName:nil bundle:nil];
    if (self) {
        // Custom initialization
		self.title = t;
		album = arr;
		CGRect frame = [UIScreen mainScreen].applicationFrame;
		PhotoAlbumView *albumView = [[PhotoAlbumView alloc] initWithFrame:frame withArray:album];
		self.view = albumView;
		
		
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	/*CGRect frame = [UIScreen mainScreen].applicationFrame;
	PhotoAlbumView *albumView = [[PhotoAlbumView alloc] initWithFrame:frame withArray:album];
	s*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
