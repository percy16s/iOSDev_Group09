//
//  ViewController.m
//  CreacionProtocoloDelegado
//
//  Created by Franti Saúl Huamán Mera on 1/30/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark -
#pragma mark LifeCycle Methods
- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    SegundaClaseViewController *t = segue.destinationViewController;
    //Paso 7
    t.delegate = self;
}

#pragma mark -
#pragma mark SegundaClase Delegate Method
//Paso 6
- (void)pasarCadenaConcatenada:(NSString *)cadena{
    self.resultado.text = cadena;
}

@end
