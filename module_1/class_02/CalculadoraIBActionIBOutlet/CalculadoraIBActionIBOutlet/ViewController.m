//
//  ViewController.m
//  CalculadoraIBActionIBOutlet
//
//  Created by Franti Saúl Huamán Mera on 1/28/14.
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

- (IBAction)sumar:(id)sender {
    self.resultado.text = [NSString stringWithFormat:@"%i",[self.cajaUno.text intValue]+[self.cajaDos.text intValue]];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sumar uno mas" message:self.resultado.text delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Aceptar", nil];
    alert.tag = 1;
    [alert show];
}
- (IBAction)dividir:(id)sender {
    self.resultado.text = [NSString stringWithFormat:@"%i",[self.cajaUno.text intValue]/[self.cajaDos.text intValue]];
}

- (IBAction)restar:(id)sender {
    self.resultado.text = [NSString stringWithFormat:@"%i",[self.cajaUno.text intValue]-[self.cajaDos.text intValue]];
    
    UIActionSheet *t = [[UIActionSheet alloc] initWithTitle:@"Resultado" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:nil otherButtonTitles:@"Botón 1", @"Botón 2", nil];
    [t showInView:self.view];
    t.tag=1;
}

- (IBAction)multiplicar:(id)sender {
    self.resultado.text = [NSString stringWithFormat:@"%i",[self.cajaUno.text intValue]*[self.cajaDos.text intValue]];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (actionSheet.tag==1){
        if (buttonIndex==0) {
            
        }
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (alertView.tag==1) {
        if (buttonIndex==0) {
            NSLog(@"Canceló");
        }else{
            self.view.backgroundColor = [UIColor greenColor];
            self.resultado.text=[NSString stringWithFormat:@"%i",[self.resultado.text intValue]+1];
            NSLog(@"Cualquier otro botón");
        }
    }
}

@end
