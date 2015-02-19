//
//  Llamadas.m
//  iBrujo01
//
//  Created by Claudia Oliva on 19/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Llamadas.h"

@interface Llamadas ()

@end

@implementation Llamadas

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

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(IBAction)LlamarPrimero:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:8717435469"]];
    
}


-(IBAction)LlamarSegundo:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:0456615279663"]];
    
}

-(IBAction)LlamarTercero:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:0448717432784"]];
    
}

-(IBAction)LlamarCuarto:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:8717432784"]];
    
}

@end
