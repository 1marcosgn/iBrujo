//
//  Mapas.h
//  iBrujo01
//
//  Created by Claudia Oliva on 17/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface Mapas : UIViewController{
    
    IBOutlet MKMapView *mapaBrujo;
}

-(void)PonerAnotacion;

-(IBAction)ubicacionActual:(id)sender;

@end
