//
//  Colores.h
//  iBrujo
//
//  Created by Claudia Oliva on 12/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Colores : UIViewController <UIActionSheetDelegate>{
    
    IBOutlet UIImageView *imagen01;
    IBOutlet UIImageView *imagen02;
    IBOutlet UIImageView *imagen03;
    IBOutlet UIImageView *imagen04;
    IBOutlet UIImageView *imagen05;
    
    IBOutlet UIActionSheet *hojaAyuda01;
    IBOutlet UIActionSheet *hojaAyuda02;
    IBOutlet UIActionSheet *hojaAyuda03;
    IBOutlet UIActionSheet *hojaAyuda04;
    IBOutlet UIActionSheet *hojaAyuda05;
    
    IBOutlet UILabel *labelPuntos;
    
    IBOutlet UILabel *etiquetaPrueba;
}

//Escena 01
-(IBAction)E1Respuesta01:(id)sender;
-(IBAction)E1Respuesta02:(id)sender;
-(IBAction)E1Respuesta03:(id)sender;
-(IBAction)E1Respuesta04:(id)sender;

//Escena 02
-(IBAction)E2Respuesta01:(id)sender;
-(IBAction)E2Respuesta02:(id)sender;
-(IBAction)E2Respuesta03:(id)sender;
-(IBAction)E2Respuesta04:(id)sender;

//Escena 03
-(IBAction)E3Respuesta01:(id)sender;
-(IBAction)E3Respuesta02:(id)sender;
-(IBAction)E3Respuesta03:(id)sender;
-(IBAction)E3Respuesta04:(id)sender;

//Escena 04
-(IBAction)E4Respuesta01:(id)sender;
-(IBAction)E4Respuesta02:(id)sender;
-(IBAction)E4Respuesta03:(id)sender;
-(IBAction)E4Respuesta04:(id)sender;

//Escena 05
-(IBAction)E5Respuesta01:(id)sender;
-(IBAction)E5Respuesta02:(id)sender;
-(IBAction)E5Respuesta03:(id)sender;
-(IBAction)E5Respuesta04:(id)sender;

-(IBAction)MostrarAyuda01:(id)sender;
-(IBAction)MostrarAyuda02:(id)sender;
-(IBAction)MostrarAyuda03:(id)sender;
-(IBAction)MostrarAyuda04:(id)sender;
-(IBAction)MostrarAyuda05:(id)sender;

-(IBAction)GuardarPuntaje:(id)sender;
-(void)VerPuntaje;

@end
