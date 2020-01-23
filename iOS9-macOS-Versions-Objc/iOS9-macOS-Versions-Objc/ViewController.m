//
//  ViewController.m
//  iOS9-macOS-Versions-Objc
//
//  Created by Paul Solt on 11/4/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	NSString *name = @"Percy Ngan"; // In ObjC, string is an object


//*----------------------------------------
// Printing

//	print("Hi my name is \(Percy).") // Swift
	NSLog(@"Hi, my name is %@ there are %lu letters in the name.", name, name.length); // %@ is a token that matches an item, in this case, whatever comes after the comma

	// Creating a string and printing it out
	char *nameInC = "Percy Ngan"; // This is a C-string // Notes: "*" is called a pointer
	printf("Hi my name is %s\n", nameInC);

	printf("Hi my name is %s", name.UTF8String);



	// Creating a number
	float pi = 3.14; // These are primative data types
	double distance = 5590;
	int count = 27;

	NSLog(@"pi: %f distance: %f count: %i", pi, distance, count);
	NSLog(@"pi: %0.2f distance: %0.1f count: %i", pi, distance, count); // The formatting occurs inline with the %f


}


@end
