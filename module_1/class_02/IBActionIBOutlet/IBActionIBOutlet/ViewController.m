//
//  ViewController.m
//  IBActionIBOutlet
//
//  Created by Franti Saúl Huamán Mera on 1/28/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)viewWillAppear:(BOOL)animated{
    self.miIBOutlet.text = @"Franti Saúl";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrarAlerta:(id)sender {
    NSLog(@"Botón presionado");
}
@end
