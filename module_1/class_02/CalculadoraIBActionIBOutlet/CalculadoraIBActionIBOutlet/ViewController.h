//
//  ViewController.h
//  CalculadoraIBActionIBOutlet
//
//  Created by Franti Saúl Huamán Mera on 1/28/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate, UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UITextField *cajaUno;
@property (weak, nonatomic) IBOutlet UITextField *cajaDos;
- (IBAction)sumar:(id)sender;
- (IBAction)dividir:(id)sender;
- (IBAction)restar:(id)sender;
- (IBAction)multiplicar:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultado;

@end
