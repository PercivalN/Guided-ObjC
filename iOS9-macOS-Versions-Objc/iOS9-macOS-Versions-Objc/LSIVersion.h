//
//  LSIVersion.h
//  iOS9-macOS-Versions-Objc
//
//  Created by Percy Ngan on 1/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Interface (Class definition)
// Public interface

@interface LSIVersion : NSObject

@property NSString *name;

// ObjC will generate 3 things for a property
// 1. Backing variable (instance variable: _name)

//	NSString *_name;

// 2. Getter method

//- (NSString *)name {
//	return _name;
//}

// 3. Setter method

//- (void)setName:(NSString *)name {
//	_name = name;
//}

@property NSString *releaseDate;

// Creating an initializer
//init(name: String, releaseDate: Date) // Swift Code
- (instancetype)initWithName:(NSString *)name releaseDate:(NSString *)releaseDate;

// +/- = class method/instance method  // Swift: class or static
// (instancetype) = (return type) instancetype means it's returning a LSIVersion object

@end


