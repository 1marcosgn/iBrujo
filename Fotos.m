//
//  Fotos.m
//  iBrujo
//
//  Created by Claudia Oliva on 13/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Fotos.h"

@interface Fotos ()

@end

@implementation Fotos

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

#pragma mark - Metodos

-(IBAction)abrirGaleria:(id)sender{
    
    //Iniciar el controlador
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    
    //Definir el Delegate
    picker.delegate = self;
    
    //Establecer el origen de la Imagen
    picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    
    //Agrega la vista del controlador a la pantalla
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        
        UIPopoverController *popover = [[UIPopoverController alloc]initWithContentViewController:picker];
        
        //        [popover presentPopoverFromRect:CGRectMake(200, 940.0, 0.0, 0.0) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
        
        [popover presentPopoverFromRect:CGRectMake(100, 490.0, 0.0, 0.0) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
        
        
    }
    else {
        [self presentModalViewController:picker animated:YES];
    }
    
    
}


-(IBAction)tomarFoto:(id)sender{
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentModalViewController:picker animated:YES];    
}


//Recibe el mensaje cuando el controlador a finalizado.
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    //Quita la vista del controlador.
    [picker dismissModalViewControllerAnimated:YES];
    
    //Establece la imagen tomada en el objeto UIImageView.
    imagenView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
}


@end
