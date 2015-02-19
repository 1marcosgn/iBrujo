//
//  Contacto.m
//  iBrujo
//
//  Created by Claudia Oliva on 13/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Contacto.h"
#include <stdlib.h>

@interface Contacto ()

@end

@implementation Contacto



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
	
    [self Alerta];
    
    [self Consejo];
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


#pragma mark - Metodos Contacto
//-(IBAction)PruebaAleatorio:(id)sender{
//    
//    int r = arc4random()%74;
//    
//    NSString *numeroGenerado = [NSString stringWithFormat:@"%d",r];
//    
//    label.text = numeroGenerado;
//}


-(int)Aleatorio{
    
    int r = arc4random()%10;
    
    return r;
    
}

NSString *mensajeCorto = @"";

-(void)Consejo{
    
   
    int consejo = [self Aleatorio];
    
    switch (consejo) {
        case 0:
            textfield.text = @"No te confies de aquellos que te dan la mano en los mejores momentos de tu vida, aprende y valora a quien siempre te regalo su confianza";
            mensajeCorto = @"No te confies de aquellos que te dan la mano en los mejores momentos de tu vida, aprende y valora a quien siempre te regalo su confianza";
            
            break;    
        case 1:
            textfield.text = @"Portes colores claros, se fiel a tus convicciones y enfrenta tus temores no hay peor lucha que la que no se hace";
            mensajeCorto = @"Portes colores claros, se fiel a tus convicciones y enfrenta tus temores no hay peor lucha que la que no se hace";
            
            break;
        case 2:
            textfield.text = @"Los perros no molestan hasta que ladran y los necios hasta que hablan, recuerda que el gran secreto del poder se encuentra en la voluntad";
           mensajeCorto = @"Los perros no molestan hasta que ladran y los necios hasta que hablan, recuerda que el gran secreto del poder se encuentra en la voluntad";
            
            break;
        case 3:
            textfield.text = @"Por más intensa que sea la tormenta, el espíritu ha de permanecer siempre impasible, el polvo de chupa rosa siempre te ayudara a amar";
            mensajeCorto = @"Por más intensa que sea la tormenta, el espíritu ha de permanecer siempre impasible, el polvo de chupa rosa siempre te ayudara a amar";
            break;
        case 4:
            textfield.text = @"Piensa que todo aquello que la Mente Humana puede concebir y creer se puede alcanzar, se fiel y noble y entonces te daran una gran sorpresa recibiras muchos dones un hombre con don siempre es bien visto en sociedad";
            
            mensajeCorto = @"Piensa que todo aquello que la Mente Humana puede concebir y creer se puede alcanzar, se fiel y noble y entonces te daran una gran sorpresa";
            break;
        case 5:
            textfield.text = @"Remembra esto, cualquiera puede desear riquezas, y la mayoría de la gente las desea. Pero sólo unos pocos saben que los únicos medios fiables de acumular riqueza es mediante un plan definido, además de un ardiente deseo de alcanzar la riqueza";
            mensajeCorto = @"Remembra esto, cualquiera puede desear riquezas, y la mayoría de la gente las desea. Pero sólo unos pocos saben que los únicos medios";
            break;
        case 6:
            textfield.text = @"No por mucho madrugar sale el gallo mas temprano, vive tu vida y no dejes a la suerte tu destino ve a por el y logralo, estas preparado? entonces anda y ve te esta esperando tu destino, anda y ve";
            mensajeCorto = @"No por mucho madrugar sale el gallo mas temprano, vive tu vida y no dejes a la suerte tu destino ve a por el y logralo, estas preparado?";
            break;
        case 7:
            textfield.text = @"Cuando quieras tu, divertirte mas ve y busca a tus compañeros y montate en el tren de la alegría perturba esas malas vibras con tu buena fe, la vida es una y hay que vivirla";
            mensajeCorto = @"Cuando quieras tu, divertirte mas ve y busca a tus compañeros y montate en el tren de la alegría perturba esas malas vibras con tu buena fe";
            break;
        case 8:
            textfield.text = @"Mentiras son todas mentiras, eso que diga la gente que a ti no te de cuidado ve a por la vida y porta colores claros para atraer la felicidad la envidia es dura pero mas duro es el que la aguante";
            mensajeCorto = @"Mentiras son todas mentiras, eso que diga la gente que a ti no te de cuidado ve a por la vida y porta colores claros para atraer la paz";
            break;
        case 9:
            textfield.text = @"Mentiras son todas mentiras, eso que diga la gente que a ti no te de cuidado ve a por la vida y porta colores claros para atraer la felicidad la envidia es dura pero mas duro es el que la aguante";
            mensajeCorto = @"Mentiras son todas mentiras, eso que diga la gente que a ti no te de cuidado ve a por la vida y porta colores claros para atraer la paz";
            break;
        case 10:
            textfield.text = @"Ya lo pasado pasa no te interesa con quien este el ser amado si a tu lado tienes ahora la oportunidad de conocer a un gran Varón o una gran mujer que te den, compañia y cariño es lo que necesitas";
            mensajeCorto = @"Ya lo pasado pasa no te interesa con quien este el ser amado si a tu lado tienes ahora la oportunidad de conocer a un gran Varón";
            break;
            
        default:
            break;
    }
    
}

-(void)Alerta{
    
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"iBrujo" message:@"El iBrujo te va a dar los mejores consejos para enfrentar tus retos en la vida y el amor" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alert show];
    
}

-(IBAction)OtroConsejo:(id)sender{
    
    [self Consejo];
    
}

#pragma mark - Tweet
- (IBAction)showTweetSheet{
    
    //  Create an instance of the Tweet Sheet
    TWTweetComposeViewController *tweetSheet = [[TWTweetComposeViewController alloc] init];
    
    // Sets the completion handler.  Note that we don't know which thread the
    // block will be called on, so we need to ensure that any UI updates occur
    // on the main queue
    tweetSheet.completionHandler = ^(TWTweetComposeViewControllerResult result) {
        switch(result) {
            case TWTweetComposeViewControllerResultCancelled:
                //  This means the user cancelled without sending the Tweet
                break;
            case TWTweetComposeViewControllerResultDone:
                //  This means the user hit 'Send'
                break;
        }
        
        
        //  dismiss the Tweet Sheet 
        dispatch_async(dispatch_get_main_queue(), ^{            
            [self dismissViewControllerAnimated:YES completion:^{
                NSLog(@"Tweet Sheet has been dismissed."); 
            }];
        });
    };
    
    NSString *mensaje = mensajeCorto;
    
    //  Set the initial body of the Tweet2
    [tweetSheet setInitialText:mensaje]; 
    
    //  Adds an image to the Tweet
    //  For demo purposes, assume we have an image named 'larry.png'
    //  that we wish to attach
    
//    if (![tweetSheet addImage:img.image]) 
//    {
//        //if (![tweetSheet addImage:[UIImage imageNamed:@"cab.png"]]) {
//        NSLog(@"Unable to add the image!");
//    }
    
    //  Add an URL to the Tweet.  You can add multiple URLs.
    /* if (![tweetSheet addURL:[NSURL URLWithString:@"http://twitter.com/"]]){
     NSLog(@"Unable to add the URL!");
     }*/
    
    //  Presents the Tweet Sheet to the user
    [self presentViewController:tweetSheet animated:YES completion:^{
        NSLog(@"Tweet sheet has been presented.");
    }];

    
}

@end
