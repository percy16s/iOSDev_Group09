//
//  ViewController.m
//  ProtocoloDelegadoPC
//
//  Created by Franti Saúl Huamán Mera on 1/30/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark -
#pragma mark LifeCycle Method
- (void)viewDidLoad{
    [super viewDidLoad];
    self.cajaUno.delegate=self;
    self.cajaDos.delegate=self;
    
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark IBAction Methods
- (IBAction)mostrarMensaje:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"Cadena" message:[NSString stringWithFormat:@"%@ %@",self.cajaUno.text,self.cajaDos.text] delegate:self cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex==0) {
        self.view.backgroundColor = [UIColor brownColor];
    }
}

#pragma mark -
#pragma mark Text Field Delegate Methods
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField == self.cajaUno) {
        [self.cajaDos becomeFirstResponder];
    }else{
        [self.cajaDos resignFirstResponder];
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField == self.cajaDos) {
        [self mostrarMensaje:nil];
    }
}
@end
