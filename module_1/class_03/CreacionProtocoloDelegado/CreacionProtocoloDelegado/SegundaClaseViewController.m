//
//  SegundaClaseViewController.m
//  CreacionProtocoloDelegado
//
//  Created by Franti Saúl Huamán Mera on 1/30/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "SegundaClaseViewController.h"

@interface SegundaClaseViewController ()

@end

@implementation SegundaClaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)GuardarButton:(id)sender {
    //Paso 3
    [self.delegate pasarCadenaConcatenada:[NSString stringWithFormat:@"%@ %@",self.caja1.text, self.caja2.text]];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    /*
    [[[UIAlertView alloc] initWithTitle:@"Resultado" message:[NSString stringWithFormat:@"%@ %@",self.caja1.text, self.caja2.text] delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil] show];*/
}
@end
