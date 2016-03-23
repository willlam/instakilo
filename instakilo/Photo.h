//
//  Photo.h
//  instakilo
//
//  Created by William Lam on 2016-03-23.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Photo : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *subject;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) UIImage *photo;

- (instancetype)initWithTitle:(NSString *)title
					  subject:(NSString *)subject
					 location:(NSString *)location
					 andPhoto:(NSString *)photo;

@end
