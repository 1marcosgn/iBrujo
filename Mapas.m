//
//  Mapas.m
//  iBrujo01
//
//  Created by Claudia Oliva on 17/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Mapas.h"
#import "mapAnnotation.h"

@interface Mapas ()

@end

@implementation Mapas

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
	
    [self PonerAnotacion];

    
    
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

#pragma mark - Anotaciones


-(void)PonerAnotacion{
    
    //Catemaco México
    MKCoordinateRegion region1;
    region1.center.latitude=18.4217237;
    region1.center.longitude= -95.1112161;
    region1.span.longitudeDelta=0.005;
    region1.span.latitudeDelta=0.005;
    [mapaBrujo setRegion:region1 animated:YES];
    
    mapAnnotation *ann1=[[mapAnnotation alloc]init];
    ann1.title=@"Catemaco";
    ann1.subtitle=@"México";
    ann1.coordinate=region1.center;
    [mapaBrujo addAnnotation:ann1];
    
    //Edo. de México
    MKCoordinateRegion region2;
    region2.center.latitude=19.4968732;
    region2.center.longitude= -99.7232673;
    region2.span.longitudeDelta=0.005;
    region2.span.latitudeDelta=0.005;
    [mapaBrujo setRegion:region2 animated:YES];
    
    mapAnnotation *ann2=[[mapAnnotation alloc]init];
    ann2.title=@"Edo. de México";
    ann2.subtitle=@"México";
    ann2.coordinate=region2.center;
    [mapaBrujo addAnnotation:ann2];
    
    //Brujo Lino - Lima Peru
    MKCoordinateRegion region3;
    region3.center.latitude=-10.6724166;
    region3.center.longitude= -77.8155828;
    region3.span.longitudeDelta=0.005;
    region3.span.latitudeDelta=0.005;
    [mapaBrujo setRegion:region3 animated:YES];
    
    mapAnnotation *ann3=[[mapAnnotation alloc]init];
    ann3.title=@"Brujo Lino";
    ann3.subtitle=@"Lima - Perú";
    ann3.coordinate=region3.center;
    [mapaBrujo addAnnotation:ann3];
    
    //Franco Gamada
    MKCoordinateRegion region4;
    region4.center.latitude= 21.0164621;
    region4.center.longitude= -101.2528749;
    region4.span.longitudeDelta=0.005;
    region4.span.latitudeDelta=0.005;
    [mapaBrujo setRegion:region4 animated:YES];
    
    mapAnnotation *ann4=[[mapAnnotation alloc]init];
    ann4.title=@"Franco Gamada";
    ann4.subtitle=@"Gto. México";
    ann4.coordinate=region4.center;
    [mapaBrujo addAnnotation:ann4];
    
    //Mercado Gomez Palacio - Durango
    MKCoordinateRegion region5;
    region5.center.latitude= 24.0313316;
    region5.center.longitude= -104.6715687;
    region5.span.longitudeDelta=0.005;
    region5.span.latitudeDelta=0.005;
    [mapaBrujo setRegion:region5 animated:YES];
    
    mapAnnotation *ann5=[[mapAnnotation alloc]init];
    ann5.title=@"Mercado G.P.";
    ann5.subtitle=@"Durango Dgo.";
    ann5.coordinate=region5.center;
    [mapaBrujo addAnnotation:ann5];
    
    //Lugares
    //Mercado Juárez
    MKCoordinateRegion region;
    region.center.latitude=25.537853;
    region.center.longitude= -103.459496;
    region.span.longitudeDelta=0.005;
    region.span.latitudeDelta=0.005;
    [mapaBrujo setRegion:region animated:YES];
    
    mapAnnotation *ann=[[mapAnnotation alloc]init];
    ann.title=@"Mercado Juárez";
    ann.subtitle=@"Limpias, Lectura de cartas y mas...";
    ann.coordinate=region.center;
    [mapaBrujo addAnnotation:ann];

    
    
}

-(IBAction)ubicacionActual:(id)sender{
    
    mapaBrujo.showsUserLocation = YES;
    
}

@end
