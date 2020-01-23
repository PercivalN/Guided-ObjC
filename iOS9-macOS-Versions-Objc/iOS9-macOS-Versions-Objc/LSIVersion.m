//
//  LSIVersion.m
//  iOS9-macOS-Versions-Objc
//
//  Created by Percy Ngan on 1/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIVersion.h"

// Implementation (Code Detail)
// Private

@implementation LSIVersion

- (instancetype)initWithName:(NSString *)name releaseDate:(NSString *)releaseDate {
	self = [super init]; // Must have this line

	// if self != nil { // Swift Code
	if (self) { // In ObjC this means the same as the code above // Must have this line
		// Setup the object

		// self.name = name  // Side effects in ObjC (property setter)
		_name = name;
		_releaseDate = releaseDate;
	}
	return self;  // Must have this line
}

@end
