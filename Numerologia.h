//
//  Numerologia.h
//  iBrujo01
//
//  Created by Claudia Oliva on 17/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Numerologia : UIViewController{
    
    IBOutlet UIDatePicker *fecha;
    IBOutlet UILabel *dia;
    IBOutlet UILabel *mes;
    IBOutlet UILabel *anio;
    IBOutlet UILabel *caminoTotal;
    
    IBOutlet UILabel *cadenaLabel;
    
    IBOutlet UILabel *labelSuma;
    
    //IBOutlet UIView *viewFecha;
    
    IBOutlet UIToolbar *barraHerramientas;
    IBOutlet UIDatePicker *picker;
    
    IBOutlet UIView *vista;
    
    IBOutlet UILabel *labelCaminoVida;
    
    IBOutlet UIButton *botonCalcular;
    
    IBOutlet UITextField *textNombre;
    
    IBOutlet UILabel *labelDestino;
    IBOutlet UILabel *labelAlma;
    
    IBOutlet UILabel *diagonal01;
    IBOutlet UILabel *diagonal02;
    
    IBOutlet UILabel *labelPregunta;
    
    IBOutlet UIButton *botonFecha;

}

-(IBAction)Fecha:(id)sender;



-(IBAction)SepararPrueba:(id)sender;

-(IBAction)SepararCadenaTotal:(id)sender;

-(IBAction)NumeroDestino:(id)sender;



-(IBAction)MostrarAnimado:(id)sender;



#pragma mark - Metodos Verdaderos
-(IBAction)OcultarTeclado:(id)sender;

-(IBAction)Refresh:(id)sender;

-(IBAction)OcultarView:(id)sender;

-(IBAction)SoloOcultar:(id)sender;

-(IBAction)CalcularTodo:(id)sender;

-(int)calcularDestino;

@end
