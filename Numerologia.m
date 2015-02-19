//
//  Numerologia.m
//  iBrujo01
//
//  Created by Claudia Oliva on 17/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Numerologia.h"

@interface Numerologia ()

@end

NSString *diaglobal;
NSString *mesglobal;
NSString *anioglobal;

int caminoVida = 0;

@implementation Numerologia

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

-(IBAction)Fecha:(id)sender{
    
    NSDate *seleccion = [fecha date];
    
    NSDateFormatter *dateformatterdia = [[NSDateFormatter alloc] init];
    [dateformatterdia setFormatterBehavior:NSDateFormatterBehavior10_4];
    
    NSDateFormatter *dateformattermes = [[NSDateFormatter alloc] init];
    [dateformattermes setFormatterBehavior:NSDateFormatterBehavior10_4];
    
    NSDateFormatter *dateformatteranio = [[NSDateFormatter alloc] init];
    [dateformatteranio setFormatterBehavior:NSDateFormatterBehavior10_4];


    [dateformatterdia setDateFormat:@"dd"];
    [dateformattermes setDateFormat:@"MM"];
    [dateformatteranio setDateFormat:@"yyyy"];
    
    
    NSString *dia1= [dateformatterdia stringFromDate:seleccion];
    NSString *mes1 = [dateformattermes stringFromDate:seleccion];
    NSString *anio1 = [dateformatteranio stringFromDate:seleccion];
    
    
//    dia.text = dia1;
//    mes.text = mes1;
//    anio.text = anio1;
    
    mesglobal = mes1;
    anioglobal = anio1;
    diaglobal = dia1;
    
    int valordia,valormes,valoranio;
    
    valordia = [diaglobal intValue];
    valormes = [mesglobal intValue];
    valoranio = [anioglobal intValue];
    
    caminoVida = valordia + valormes + valoranio;
    
    int millares,centenas,decenas,unidades;
    
    millares = caminoVida / 1000;
    centenas = caminoVida / 100;
    decenas = caminoVida / 10;
    unidades = caminoVida / 1;
    
    caminoVida = millares + decenas * 3;
    
    NSString *SumaFinal;
    
    SumaFinal = [NSString stringWithFormat:@"%d", caminoVida];
    
    

    caminoTotal.text = SumaFinal;
}



//


-(IBAction)SepararPrueba:(id)sender{
    
    //Prueba separar...
    //NSString *saludo = @"Hola a todos";
    
    //NSArray *piezasdelArreglo = [saludo componentsSeparatedByString:@""];
//    
//    dia.text = [piezasdelArreglo objectAtIndex:0];
//    mes.text = [piezasdelArreglo objectAtIndex:1];
//    anio.text = [piezasdelArreglo objectAtIndex:2];
    
    
    //FUNCIONA
    NSArray *saludo = [@"Hola a todos" componentsSeparatedByString: @""];
    
    NSString *frase = [saludo objectAtIndex: 1];

    dia.text = frase;
    
    
}


-(IBAction)SepararCadenaTotal:(id)sender{
    
    //Split a string into an array of strings by using NSString's componentsSeparatedByString:
    /*
    NSString *miCadena = @"Esto es una prueba";
    NSArray *misPalabras = [miCadena componentsSeparatedByString:@" "];
    
    NSString *textoenPosicion = [misPalabras objectAtIndex:3];
    
    cadenaLabel.text = textoenPosicion;
    */
    
    //Split on a set of several different characters
    /*
    NSString *miCadena = @"Foo-bar/blee";
    NSArray *misPalabras = [miCadena componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"-/"]];
    
    NSString *textoenPosicion = [misPalabras objectAtIndex:1];
    
    cadenaLabel.text = textoenPosicion;
      */
    
  
    
    //Separate a string into its individual characters
    NSString *miCadena = @"Hola";
    
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[miCadena length]];
    
//    for (int i = 0; [miCadena length]; i++) {
//        NSString *ichar = [NSString stringWithFormat:@"%c", [miCadena characterAtIndex:i]];
//        [characters addObject:ichar];
//    }
    
    
    
    NSString *ichar = [NSString stringWithFormat:@"%c", [miCadena characterAtIndex:0]];
    [characters addObject:ichar];
        
    NSString *textoenPosicion = [characters objectAtIndex:0];
    
    cadenaLabel.text = textoenPosicion;
 
        
    
    
}


-(IBAction)NumeroDestino:(id)sender{
    //Capturar el año, el mes, y el dia en variables Globales...ready
        
    NSDate *seleccion = [fecha date];
    
    NSDateFormatter *dateformatterdia = [[NSDateFormatter alloc] init];
    [dateformatterdia setFormatterBehavior:NSDateFormatterBehavior10_4];
    
    NSDateFormatter *dateformattermes = [[NSDateFormatter alloc] init];
    [dateformattermes setFormatterBehavior:NSDateFormatterBehavior10_4];
    
    NSDateFormatter *dateformatteranio = [[NSDateFormatter alloc] init];
    [dateformatteranio setFormatterBehavior:NSDateFormatterBehavior10_4];
    
    
    [dateformatterdia setDateFormat:@"dd"];
    [dateformattermes setDateFormat:@"MM"];
    [dateformatteranio setDateFormat:@"yyyy"];
    
    
    diaglobal = [dateformatterdia stringFromDate:seleccion];
    mesglobal = [dateformattermes stringFromDate:seleccion];
    anioglobal = [dateformatteranio stringFromDate:seleccion];
    
    //Separar en caracteres el año, el mes y el dia...ready
    
    //DIAS
    NSString *diaCadena = diaglobal;
    
    
    NSString *individualDia = [NSString stringWithFormat:@"%c", [diaCadena characterAtIndex:0]];
    NSString *individualDia2 = [NSString stringWithFormat:@"%c", [diaCadena characterAtIndex:1]];
       
   
    //MESES
    NSString *mesCadena = mesglobal;
    
    NSString *individualMes = [NSString stringWithFormat:@"%c", [mesCadena characterAtIndex:0]];
    NSString *individualMes2 = [NSString stringWithFormat:@"%c", [mesCadena characterAtIndex:1]];
    

    //AÑO
    NSString *anioCadena = anioglobal;
    
    NSString *individualAnio = [NSString stringWithFormat:@"%c", [anioCadena characterAtIndex:0]];
    NSString *individualAnio2 = [NSString stringWithFormat:@"%c", [anioCadena characterAtIndex:1]];
    NSString *individualAnio3 = [NSString stringWithFormat:@"%c", [anioCadena characterAtIndex:2]];
    NSString *individualAnio4 = [NSString stringWithFormat:@"%c", [anioCadena characterAtIndex:3]];
    
        
    //Convertir cada uno de esos caracteres en valores enteros..
    int dia1,dia2,mes1,mes2,anio1,anio2,anio3,anio4;
    
    dia1 = [individualDia intValue];
    dia2 = [individualDia2 intValue];
    
    mes1 = [individualMes intValue];
    mes2 = [individualMes2 intValue];
    
    anio1 = [individualAnio intValue];
    anio2 = [individualAnio2 intValue];
    anio3 = [individualAnio3 intValue];
    anio4 = [individualAnio4 intValue];
    
    
    //Sumar todos los valores y obtener el resultado.
    
    int SumatoriaTotal = dia1 + dia2 + mes1 + mes2 + anio1 + anio2 + anio3 + anio4;
    
    //Si el resultado es '11' ó '22' entonces es un numero Maestro
    if (SumatoriaTotal == 11 || SumatoriaTotal == 22) {
        labelSuma.text = [NSString stringWithFormat:@"%d", SumatoriaTotal];
    }
    else {
        
        //Trasformar ese valor en un NSString y separarlo en dos partes
        NSString *cadenaSumatoria = [NSString stringWithFormat:@"%d", SumatoriaTotal];
        
        NSString *primeraParte = [NSString stringWithFormat:@"%c", [cadenaSumatoria characterAtIndex:0]];
        NSString *segundaParte = [NSString stringWithFormat:@"%c", [cadenaSumatoria characterAtIndex:1]];
        
        //Convertir esos valores a enteros
        
        int primero = [primeraParte intValue];
        int segundo = [segundaParte intValue];
        
        //Sumar los valores
        int granTotal = primero + segundo;
        
        //Mostrar el resultado en un label.
        labelSuma.text = [NSString stringWithFormat:@"%d", granTotal];
        

    }
    
        
    
}

-(IBAction)OcultarView:(id)sender{
    
    barraHerramientas.hidden = YES;
    picker.hidden = YES;
    
    

    

}

-(IBAction)MostrarAnimado:(id)sender{
    
    float valorVista = vista.alpha;
    
    if (valorVista == 1.0) {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 0.0;
            
            //pone la imagen actual
//            botonFecha.imageView = [UIImage imageNamed:@"butFecha01"];
        
            UIImage *imagenFecha = [UIImage imageNamed:@"butFecha01.png"];
            
            [botonFecha setBackgroundImage:imagenFecha forState:UIControlStateNormal];
            
            //[self.view addSubview:botonFecha];
        
        }];
    }
    else {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 1.0;
            
            //pone la nueva imagen
            
            UIImage *imagenFecha = [UIImage imageNamed:@"butFecha02.png"];
            
            [botonFecha setBackgroundImage:imagenFecha forState:UIControlStateNormal];
            
            //[self.view addSubview:botonFecha];

        }];
    }

    
}


#pragma mark - Metodos Verdaderos
-(IBAction)OcultarTeclado:(id)sender{
    
    
}

-(IBAction)Refresh:(id)sender{
    
    NSDate *ahora = [[NSDate alloc] init];
    
    [fecha setDate:ahora animated:YES];
    
}

-(IBAction)SoloOcultar:(id)sender{
    
    //Carga las variables Globales con las fechas seleccionadas
    
    //Capturar el año, el mes, y el dia en variables Globales...ready
    
    NSDate *seleccion = [fecha date];
    
    NSDateFormatter *dateformatterdia = [[NSDateFormatter alloc] init];
    [dateformatterdia setFormatterBehavior:NSDateFormatterBehavior10_4];
    
    NSDateFormatter *dateformattermes = [[NSDateFormatter alloc] init];
    [dateformattermes setFormatterBehavior:NSDateFormatterBehavior10_4];
    
    NSDateFormatter *dateformatteranio = [[NSDateFormatter alloc] init];
    [dateformatteranio setFormatterBehavior:NSDateFormatterBehavior10_4];
    
    
    [dateformatterdia setDateFormat:@"dd"];
    [dateformattermes setDateFormat:@"MM"];
    [dateformatteranio setDateFormat:@"yyyy"];
    
    
    diaglobal = [dateformatterdia stringFromDate:seleccion];
    mesglobal = [dateformattermes stringFromDate:seleccion];
    anioglobal = [dateformatteranio stringFromDate:seleccion];

        
    dia.text = diaglobal;
    mes.text = mesglobal;
    anio.text = anioglobal;
    
    diagonal01.alpha = 1.0;
    diagonal02.alpha = 1.0;
    
    
    //Oculta la Vista Secundaria
 
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 0.0;
            
        }];

    botonCalcular.alpha = 1.0;
    
    labelPregunta.alpha = 0.0;
    
}


-(IBAction)CalcularTodo:(id)sender{
    
#pragma mark - EL CAMINO DE TU VIDA
    
    botonCalcular.alpha = 0.0;
    
    //Separar en caracteres el año, el mes y el dia...ready
    
    //DIAS
    NSString *diaCadena = diaglobal;
    
    
    NSString *individualDia = [NSString stringWithFormat:@"%c", [diaCadena characterAtIndex:0]];
    NSString *individualDia2 = [NSString stringWithFormat:@"%c", [diaCadena characterAtIndex:1]];
    
    
    //MESES
    NSString *mesCadena = mesglobal;
    
    NSString *individualMes = [NSString stringWithFormat:@"%c", [mesCadena characterAtIndex:0]];
    NSString *individualMes2 = [NSString stringWithFormat:@"%c", [mesCadena characterAtIndex:1]];
    
    
    //AÑO
    NSString *anioCadena = anioglobal;
    
    NSString *individualAnio = [NSString stringWithFormat:@"%c", [anioCadena characterAtIndex:0]];
    NSString *individualAnio2 = [NSString stringWithFormat:@"%c", [anioCadena characterAtIndex:1]];
    NSString *individualAnio3 = [NSString stringWithFormat:@"%c", [anioCadena characterAtIndex:2]];
    NSString *individualAnio4 = [NSString stringWithFormat:@"%c", [anioCadena characterAtIndex:3]];
    
    
    //Convertir cada uno de esos caracteres en valores enteros..
    int dia1,dia2,mes1,mes2,anio1,anio2,anio3,anio4;
    
    dia1 = [individualDia intValue];
    dia2 = [individualDia2 intValue];
    
    mes1 = [individualMes intValue];
    mes2 = [individualMes2 intValue];
    
    anio1 = [individualAnio intValue];
    anio2 = [individualAnio2 intValue];
    anio3 = [individualAnio3 intValue];
    anio4 = [individualAnio4 intValue];
    
    
    //Sumar todos los valores y obtener el resultado.
    
    int SumatoriaTotal = dia1 + dia2 + mes1 + mes2 + anio1 + anio2 + anio3 + anio4;
    
    //Si el resultado es '11' ó '22' entonces es un numero Maestro
    if (SumatoriaTotal == 11 || SumatoriaTotal == 22) {
        labelCaminoVida.text = [NSString stringWithFormat:@"%d", SumatoriaTotal];
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"iBrujo" message:@"Eres dueño de un número maestro en tu vida" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
    }
    else {
        
        //Trasformar ese valor en un NSString y separarlo en dos partes
        NSString *cadenaSumatoria = [NSString stringWithFormat:@"%d", SumatoriaTotal];
        
        NSString *primeraParte = [NSString stringWithFormat:@"%c", [cadenaSumatoria characterAtIndex:0]];
        NSString *segundaParte = [NSString stringWithFormat:@"%c", [cadenaSumatoria characterAtIndex:1]];
        
        //Convertir esos valores a enteros
        
        int primero = [primeraParte intValue];
        int segundo = [segundaParte intValue];
        
        //Sumar los valores
        int granTotal = primero + segundo;
        
        //Mostrar el resultado en un label.
        labelCaminoVida.text = [NSString stringWithFormat:@"%d", granTotal];
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"iBrujo" message:@"Ahora conoces los números que marcan diferencia en tu vida, aprende a utilizarlos a tu favor" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];

        
        
    }
    
#pragma mark - EL NUMERO DE TU DESTINO
    
    int noDestino = [self calcularDestino];
    
    labelDestino.text = [NSString stringWithFormat:@"%d", noDestino];
    
#pragma mark - EL NUMERO DE TU ALMA
    
    int noAlma = [self numeroAlma];
    labelAlma.text = [NSString stringWithFormat:@"%d", noAlma];
    
}

int numeroDestino;
int numeroAlma;

-(int)calcularDestino{
    
    numeroDestino = 0;
    
    NSString *nombre = textNombre.text;
    
    int longNombre = [nombre length];
    
    NSMutableArray *arregloNombre = [[NSMutableArray alloc] initWithCapacity:longNombre];
 
    
    for (int i=0; i<longNombre; i++) {
        NSString *individual = [NSString stringWithFormat:@"%c", [nombre characterAtIndex:i]];
        //NSLog(individual);
        //poblar el arreglo Nombre con las cadenas individual
        [arregloNombre addObject:individual];
        
        NSString *letraPorletra = [arregloNombre objectAtIndex:i];
        
        //NSLog(letraPorletra);
        if ([letraPorletra isEqualToString:@"A"] || [letraPorletra isEqualToString:@"J"] || [letraPorletra isEqualToString:@"R"] || [letraPorletra isEqualToString:@"a"] || [letraPorletra isEqualToString:@"j"] || [letraPorletra isEqualToString:@"r"]){
            numeroDestino = numeroDestino + 1;
        }
        if ([letraPorletra isEqualToString:@"B"] || [letraPorletra isEqualToString:@"K"] || [letraPorletra isEqualToString:@"S"] || [letraPorletra isEqualToString: @"b"] || [letraPorletra isEqualToString:@"k"] || [letraPorletra isEqualToString:@"s"]) {
            numeroDestino = numeroDestino + 2;
        }
        if ([letraPorletra isEqualToString:@"C"] || [letraPorletra isEqualToString:@"L"] || [letraPorletra isEqualToString:@"T"] || [letraPorletra isEqualToString:@"c"] || [letraPorletra isEqualToString: @"l"] || [letraPorletra isEqualToString: @"t"]) {
            numeroDestino = numeroDestino + 3;
        }
        if ([letraPorletra isEqualToString: @"D"] || [letraPorletra isEqualToString: @"M"] || [letraPorletra isEqualToString: @"U"] || [letraPorletra isEqualToString:@"d"] || [letraPorletra isEqualToString:@"m"] || [letraPorletra isEqualToString:@"u"]) {
            numeroDestino = numeroDestino + 4;
        }
        if ([letraPorletra isEqualToString:@"E"] || [letraPorletra isEqualToString:@"N"] || [letraPorletra isEqualToString:@"V"] || [letraPorletra isEqualToString:@"e"] || [letraPorletra isEqualToString:@"n"] || [letraPorletra isEqualToString:@"v"]) {
            numeroDestino = numeroDestino + 5;
        }
        if ([letraPorletra isEqualToString:@"F"] || [letraPorletra isEqualToString:@"Ñ"] || [letraPorletra isEqualToString:@"W"] || [letraPorletra isEqualToString:@"f"] || [letraPorletra isEqualToString:@"ñ"] || [letraPorletra isEqualToString:@"w"]) {
            numeroDestino = numeroDestino + 6;
        }
        if ([letraPorletra isEqualToString:@"G"] || [letraPorletra isEqualToString:@"O"] || [letraPorletra isEqualToString:@"X"] || [letraPorletra isEqualToString:@"g"] || [letraPorletra isEqualToString:@"o"] || [letraPorletra isEqualToString:@"x"]) {
            numeroDestino = numeroDestino + 7;
        }
        if ([letraPorletra isEqualToString:@"H"] || [letraPorletra isEqualToString:@"P"] || [letraPorletra isEqualToString:@"Y"] || [letraPorletra isEqualToString:@"h"] || [letraPorletra isEqualToString:@"p"] || [letraPorletra isEqualToString:@"y"]) {
            numeroDestino = numeroDestino + 8;
        }
        if ([letraPorletra isEqualToString:@"I"] || [letraPorletra isEqualToString:@"Q"] || [letraPorletra isEqualToString:@"Z"] || [letraPorletra isEqualToString: @"i"] || [letraPorletra isEqualToString: @"q"] || [letraPorletra isEqualToString:@"z"]) {
            numeroDestino = numeroDestino + 9;
        }
    
    }
    
    
    return numeroDestino;
    
 }

-(int)numeroAlma{
    
    numeroAlma = 0;
    
    NSString *nombre = textNombre.text;
    
    int longNombre = [nombre length];
    
    NSMutableArray *arregloNombre = [[NSMutableArray alloc] initWithCapacity:longNombre];
    
    
    for (int i=0; i<longNombre; i++) {
        NSString *individual = [NSString stringWithFormat:@"%c", [nombre characterAtIndex:i]];
        //NSLog(individual);
        //poblar el arreglo Nombre con las cadenas individual
        [arregloNombre addObject:individual];
        
        NSString *letraPorletra = [arregloNombre objectAtIndex:i];
        
        //NSLog(letraPorletra);
        if ([letraPorletra isEqualToString:@"A"] || [letraPorletra isEqualToString:@"a"]){
            numeroAlma = numeroAlma + 1;
        }
                
        if ([letraPorletra isEqualToString: @"U"] || [letraPorletra isEqualToString:@"u"]) {
            numeroAlma = numeroAlma + 4;
        }
        
        if ([letraPorletra isEqualToString:@"E"] || [letraPorletra isEqualToString:@"e"]) {
            numeroAlma = numeroAlma + 5;
        }
      
        if ([letraPorletra isEqualToString:@"O"] || [letraPorletra isEqualToString:@"o"] || [letraPorletra isEqualToString:@"x"]) {
            numeroAlma = numeroAlma + 7;
        }
   
        if ([letraPorletra isEqualToString:@"I"] || [letraPorletra isEqualToString: @"i"]) {
            numeroAlma = numeroAlma + 9;
        }
        
    }
    
    
    return numeroAlma;
    
    
}


@end
