//
//  Colores.m
//  iBrujo
//
//  Created by Claudia Oliva on 12/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Colores.h"

@interface Colores ()

@end

@implementation Colores

int puntos = 0;

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
	
    //Cargar Dato
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadstring = [defaults objectForKey:@"savestring"];
    [labelPuntos setText:loadstring];
    [labelPuntos setText:loadstring];
    
    resp1 = true;
    resp2 = true;
    resp3 = true;
    resp4 = true;
    resp5 = true;
    
    
    //if (banderaActivacion == true) {
        [self VerPuntaje];
    //}
    
}


bool banderaActivacion = false;


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Metodos Preguntas.
//Cada boton presionado activa el estado de la bandera, entonces existen 5 banderas globales que seran o no 
//activadas dependiendo de su respuesta...

-(void)Ceros{
    
    puntos = 0;
    
}

//Variables Globales
bool respuestaEscena01 = false;
bool respuestaEscena02 = false;
bool respuestaEscena03 = false;
bool respuestaEscena04 = false;
bool respuestaEscena05 = false;

bool resp1 = true;
bool resp2 = true;
bool resp3 = true;
bool resp4 = true;
bool resp5 = true;

//Escena 01:::::::::::::::::::::::::::::::::::::
-(IBAction)E1Respuesta01:(id)sender{
    
    if (puntos != 0) {
        puntos = 0;
    }
    else {
    
    
    if (resp1 == TRUE) {

        imagen01.image =[UIImage imageNamed:@"mal.png"];
        puntos = 0;
        resp1 = FALSE;
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
        resp1 = FALSE;
    }
        
    }
    /*

    
    //a
    respuestaEscena01 = FALSE;
    imagen01.image =[UIImage imageNamed:@"mal.png"];
    
    puntos = puntos - 1;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    */
}
-(IBAction)E1Respuesta02:(id)sender{
    
    if (puntos != 0) {
        puntos = 0;
    }
    else {

    
    if (resp1 == TRUE) {
        
        imagen01.image =[UIImage imageNamed:@"mal.png"];
        puntos = 0;
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
        resp1 = FALSE;
    }
    
    }
    /*
    //b
    respuestaEscena01 = FALSE;
    imagen01.image =[UIImage imageNamed:@"mal.png"];
    
    puntos = puntos - 1;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
     */

}
-(IBAction)E1Respuesta03:(id)sender{
    
    if (puntos == 0) {
    

    if (resp1 == TRUE) {
        puntos = puntos + 1;
        resp1 = FALSE;
        imagen01.image =[UIImage imageNamed:@"bien.png"];
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
        
    }
    else {
        puntos = puntos;
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
    }
    else {
        puntos = 1;
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;

    }
    
    
    /*
    //c
    respuestaEscena01 = TRUE;
    imagen01.image =[UIImage imageNamed:@"bien.png"];
    puntos = puntos + 1;
    
    if (puntos <= 0) {
        labelPuntos.text = @"1";
        labelPuntos.hidden = FALSE;
    }else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }*/
    
    
     
}
-(IBAction)E1Respuesta04:(id)sender{
   
    if (puntos != 0) {
        puntos = 0;
    }
    else {

    if (resp1 == TRUE) {
        
        imagen01.image =[UIImage imageNamed:@"mal.png"];
        puntos = 0;
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
        resp1 = FALSE;
    }
    
    }
    /*

    
    //d
    respuestaEscena01 = FALSE;
    imagen01.image =[UIImage imageNamed:@"mal.png"];
    
    puntos = puntos - 1;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }*/

}

//Escena 02:::::::::::::::::::::::::::::::::::::
-(IBAction)E2Respuesta01:(id)sender{
    /*
    if (puntos == 0 || puntos == 1) {
        
        
        if (resp2 == TRUE) {
            puntos = puntos + 1;
            resp2 = FALSE;
            imagen01.image =[UIImage imageNamed:@"bien.png"];
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
            
        }
        else {
            puntos = puntos;
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = 1;
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
        
    }
    
   */
    if (resp2 == true) {
    //a
    respuestaEscena02 = TRUE;
    imagen02.image = [UIImage imageNamed:@"bien.png"];
    puntos = puntos + 1;
        resp2 = false;
        
    if (puntos <= 0) {
        labelPuntos.text = @"1";
        labelPuntos.hidden = FALSE;
    }else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
    }
else {
    puntos = puntos;
}
    
}
-(IBAction)E2Respuesta02:(id)sender{
    
    /*
    if (puntos != 0 && puntos != 1) {
        puntos = 0;
    }
    else {
        
        if (resp2 == TRUE) {
            
            imagen01.image =[UIImage imageNamed:@"mal.png"];
            puntos = 0;
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
            resp2 = FALSE;
        }
        
    }
    */
    
    //b
    respuestaEscena02 = FALSE;
    imagen02.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
 

}
-(IBAction)E2Respuesta03:(id)sender{
    
    /*
    if (puntos != 0 && puntos != 1) {
        puntos = 0;
    }
    else {
        
        if (resp2 == TRUE) {
            
            imagen01.image =[UIImage imageNamed:@"mal.png"];
            puntos = 0;
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
            resp2 = FALSE;
        }
        
    }
*/
  
    //c
    respuestaEscena02 = FALSE;
    imagen02.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }


}
-(IBAction)E2Respuesta04:(id)sender{
    /*
    if (puntos != 0 && puntos != 1) {
        puntos = 0;
    }
    else {
        
        if (resp2 == TRUE) {
            
            imagen01.image =[UIImage imageNamed:@"mal.png"];
            puntos = 0;
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
            resp2 = FALSE;
        }
        
    }

   */
    //d
    respuestaEscena02 = FALSE;
    imagen02.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

}

//Escena 03:::::::::::::::::::::::::::::::::::::
-(IBAction)E3Respuesta01:(id)sender{
    //a
    respuestaEscena03 = FALSE;
    imagen03.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

}
-(IBAction)E3Respuesta02:(id)sender{
    
    if (resp3 == true) {
        
    //b
    respuestaEscena03 = TRUE;
    imagen03.image = [UIImage imageNamed:@"bien.png"];
    puntos = puntos + 1;
        resp3 = false;
    if (puntos <= 0) {
        labelPuntos.text = @"1";
        labelPuntos.hidden = FALSE;
    }else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
        
    }
    else {
        puntos = puntos;
    }
    
}
-(IBAction)E3Respuesta03:(id)sender{
    //c
    respuestaEscena03 = FALSE;
    imagen03.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

}
-(IBAction)E3Respuesta04:(id)sender{
    //d
    respuestaEscena03 = FALSE;
    imagen03.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

}

//Escena 04:::::::::::::::::::::::::::::::::::::
-(IBAction)E4Respuesta01:(id)sender{
    //a
    respuestaEscena04 = FALSE;
    imagen04.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

}
-(IBAction)E4Respuesta02:(id)sender{
    //b
    respuestaEscena04 = FALSE;
    imagen04.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

}
-(IBAction)E4Respuesta03:(id)sender{
    //c
    if (resp4 == true) {
   
    respuestaEscena04 = TRUE;
    imagen04.image = [UIImage imageNamed:@"bien.png"];
    puntos = puntos + 1;
        resp4 = false;
    
    if (puntos <= 0) {
        labelPuntos.text = @"1";
        labelPuntos.hidden = FALSE;
    }else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
        
    }
    else {
        puntos = puntos;
    }
}
-(IBAction)E4Respuesta04:(id)sender{
    //d
    respuestaEscena04 = FALSE;
    imagen04.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

}

//Escena 05:::::::::::::::::::::::::::::::::::::
-(IBAction)E5Respuesta01:(id)sender{
    //a
    respuestaEscena05 = FALSE;
    imagen05.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

}
-(IBAction)E5Respuesta02:(id)sender{
    //b
    respuestaEscena05 = FALSE;
    imagen05.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

}
-(IBAction)E5Respuesta03:(id)sender{
    //c
    respuestaEscena05 = FALSE;
    imagen05.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

}
-(IBAction)E5Respuesta04:(id)sender{
    //d
    if (resp5 == true) {
        
    respuestaEscena05 = TRUE;
    imagen05.image = [UIImage imageNamed:@"bien.png"];
    puntos = puntos + 1;
        resp5 = false;
    
    if (puntos <= 0) {
        labelPuntos.text = @"1";
        labelPuntos.hidden = FALSE;
    }else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
    }
    else {
        puntos = puntos;
    }
}


-(IBAction)MostrarAyuda01:(id)sender{
    
    hojaAyuda01 = [[UIActionSheet alloc] initWithTitle:@"Los colores que asemejan el color del vino y diversos tonos tienen un particular efecto cuando se tratan de eliminar las inquietudes o cuando manifestamos ciertas debilidades para determinadas circunstancias o ante eventos específicos, además, nos proveen de mucho ánimo, fuerza y valor para emprender nuestras acciones." delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [hojaAyuda01 showInView:self.view];

    
}
-(IBAction)MostrarAyuda02:(id)sender{
    
    hojaAyuda02 = [[UIActionSheet alloc] initWithTitle:@"Los colores con tintes no claros y diferentes de oscuros nos ayudarán a solucionar nuestros conflictos amorosos y pueden traer a nuestras vidas al primer amor, así como a elevar nuestra pasión y a tener más claridad en las cosas del corazón." delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [hojaAyuda02 showInView:self.view];
    
}
-(IBAction)MostrarAyuda03:(id)sender{
    
    hojaAyuda03 = [[UIActionSheet alloc] initWithTitle:@"Cuando creemos que en nuestras vidas existe un déficit de valor o de ideas, serán los colores que conllevan entornos tropicales son los que combatan este problema, agregando justamente mayor vitalidad y creatividad para sacar adelante algún proyecto o salir de algún apuro." delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [hojaAyuda03 showInView:self.view];
    
}
-(IBAction)MostrarAyuda04:(id)sender{
    
    hojaAyuda04 = [[UIActionSheet alloc] initWithTitle:@"Una color claro nos conecta con nuestro ser interno, ayuda a la espiritualidad, y concentra nuestra mente en un estado profundo de concentración total donde podemos estar conectado con un ser mayor de luz y fortaleza." delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [hojaAyuda04 showInView:self.view];
    
}
-(IBAction)MostrarAyuda05:(id)sender{
    
    hojaAyuda05 = [[UIActionSheet alloc] initWithTitle:@"Estos colores nos dotan de una mejor memoria y le otorgan una mejor disciplina a nuestra forma de vivir a diferencia de otros colores que  nos ayudan a eliminar el enfado ofreciéndonos mucha paz, sosiego y tranquilidad" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [hojaAyuda05 showInView:self.view];
    
}



-(IBAction)GuardarPuntaje:(id)sender{
    
    NSString *savestring = labelPuntos.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:savestring forKey:@"savestring"];
    [defaults synchronize];
    
    [self Ceros];
    
}

-(void)VerPuntaje{

    
    puntos = puntos;
    
    if (puntos <= 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
        
        
        
    }else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
        
       
    }
    
    if ([etiquetaPrueba.text isEqualToString:@"--"]) {
        
        etiquetaPrueba.alpha = 0.0;
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"iBrujo" message:@"Has respondido el test sobre los colores y su magica influencia en tu vida, ahora ve tu puntuación y averigüa que tanto te falta por aprender" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
    }
    

}

-(IBAction)Case01:(id)sender{
    int i = 0;
    switch (i) {
  
        case 0:
            NSLog(@"es cero");
            break;
        
        
        case 1:
            NSLog(@"es uno");
            break;

  default:
    break;
            
            
}
    
}

@end
