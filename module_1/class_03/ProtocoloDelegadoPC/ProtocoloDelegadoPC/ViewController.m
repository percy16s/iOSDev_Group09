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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrarMensaje:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"Cadena" message:[NSString stringWithFormat:@"%@ %@",self.cajaUno.text,self.cajaDos.text] delegate:self cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex==0) {
        self.view.backgroundColor = [UIColor brownColor];
    }
}
@end
