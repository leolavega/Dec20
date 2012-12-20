//
//  TableViewController.m
//  Dec20
//
//  Created by Leonardo Lavega on 12/20/12.
//  Copyright (c) 2012 Leonardo Lavega. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@interface TableViewController ()


@end

@implementation TableViewController


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
		NSBundle *bundle = [NSBundle mainBundle];
		
		NSString *path = [bundle resourcePath];
		NSFileManager *fm = [NSFileManager defaultManager];
		NSError *error = [[NSError alloc] init];
		
		//Initializing photo albums
		natureAlbum = [[NSMutableArray alloc] init];
		
		NSArray *files = [fm contentsOfDirectoryAtPath:path error:&error];
		for(NSString *filename in files){
			NSRange range = [filename rangeOfString:@".jpg"];
			//file is an image file
			if(range.location != NSNotFound){
				NSLog(@"%@",filename);
				[natureAlbum addObject:filename];
			}
			
		}
		
		arr = [NSArray arrayWithObjects: @"Nature",@"Animals",@"Space", nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	NSAssert(section==0, @"section number %d must be 0.", section);
    // Return the number of rows in the section.
    return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Photo Albums";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
	}
    // Configure the cell...
    cell.textLabel.text = [arr objectAtIndex:indexPath.row];
	cell.imageView.image = [UIImage imageNamed:[natureAlbum objectAtIndex:indexPath.row]];
	//cell.imageView.frame = CGRectMake(, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
	
    return cell;
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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    ViewController* viewController = [[ViewController alloc] initWithArray:natureAlbum withTitle:@"Nature"];
	[self.navigationController pushViewController:viewController animated:YES];
	
	
	/*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
