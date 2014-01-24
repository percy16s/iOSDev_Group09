//
//  DetailViewController.h
//  deleteTest
//
//  Created by Elder Vasquez on 24/01/14.
//  Copyright (c) 2014 Elder Vasquez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
