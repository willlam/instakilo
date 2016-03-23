//
//  Photo.m
//  instakilo
//
//  Created by William Lam on 2016-03-23.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "Photo.h"
#import <UIKit/UIKit.h>

@implementation Photo

- (instancetype)initWithTitle:(NSString *)title
					  subject:(NSString *)subject
					 location:(NSString *)location
					 andPhoto:(NSString *)photo
{
	self = [super init];
	if (self) {
		_title = title;
		_subject = subject;
		_location = location;
		_photo = [UIImage imageNamed:photo];
	}
	return self;
}

@end
