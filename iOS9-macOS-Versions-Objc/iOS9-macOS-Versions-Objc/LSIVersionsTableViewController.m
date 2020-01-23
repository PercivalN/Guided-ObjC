//
//  LSIVersionsTableViewController.m
//  iOS9-macOS-Versions-Objc
//
//  Created by Percy Ngan on 1/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIVersionsTableViewController.h"
#import "LSIVersionController.h"
#import "LSIVersion.h"

@interface LSIVersionsTableViewController ()

@end

@implementation LSIVersionsTableViewController

// Called when we create a ViewController from a Storyboard
- (instancetype)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (self) {
		_controller = [[LSIVersionController alloc] init];
	}
	return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.controller.versions.count; // Need to refer to self in ObjC 
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VersionCell" forIndexPath:indexPath];

	// Method call
//	LSIVersion *version = self.controller.versions
//	LSIVersion *version = [self.controller.versions objectAtIndex:indexPath.row]; // ESC, type method name to get auto-complete
	LSIVersion *version = [self.controller.versions objectAtIndex:indexPath.row]; // ]

	// Dot syntax - new for properties
	cell.textLabel.text = version.name;
	cell.detailTextLabel.text = version.releaseDate;

	// Method call syntax (Original ObjC syntax)
	[[cell textLabel] setText:[version name]];
	[[cell detailTextLabel] setText:[version releaseDate]];
    
    return cell;
}



@end
