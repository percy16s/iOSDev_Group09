//
//  SegundaClaseViewController.h
//  CreacionProtocoloDelegado
//
//  Created by Franti Saúl Huamán Mera on 1/30/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegundaClaseViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *caja1;
@property (weak, nonatomic) IBOutlet UITextField *caja2;
- (IBAction)GuardarButton:(id)sender;

@end
