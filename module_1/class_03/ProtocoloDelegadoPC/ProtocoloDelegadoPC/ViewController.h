//
//  ViewController.h
//  ProtocoloDelegadoPC
//
//  Created by Franti Saúl Huamán Mera on 1/30/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *cajaUno;
@property (weak, nonatomic) IBOutlet UITextField *cajaDos;
- (IBAction)mostrarMensaje:(id)sender;

@end
