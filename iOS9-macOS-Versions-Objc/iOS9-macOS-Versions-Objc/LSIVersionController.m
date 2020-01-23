//
//  LSIVersionController.m
//  iOS9-macOS-Versions-Objc
//
//  Created by Percy Ngan on 1/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIVersionController.h"
#import "LSIVersion.h"

@implementation LSIVersionController

- (instancetype)init {
	self = [super init];  // super.init()
	if (self) {

//		_versions = [[NSArray alloc] init]; // gives us an empty array
		_versions = [[NSArray alloc] initWithObjects:
					 [[LSIVersion alloc] initWithName:@"Cheetah" releaseDate:@"March 24th, 2001"],
					 [[LSIVersion alloc] initWithName:@"Puma" releaseDate:@"September 24th, 2001"],
					 [[LSIVersion alloc] initWithName:@"Jaguar" releaseDate:@"March 24th, 2002"],
					 [[LSIVersion alloc] initWithName:@"Panther" releaseDate:@"March 24th, 2003"],
					 [[LSIVersion alloc] initWithName:@"Tiger" releaseDate:@"April 24th, 2005"],
					 [[LSIVersion alloc] initWithName:@"Leopard" releaseDate:@"March 24th, 2007"],

					 nil];
	}
	return self;
}

@end
