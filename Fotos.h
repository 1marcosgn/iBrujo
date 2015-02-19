//
//  Fotos.h
//  iBrujo
//
//  Created by Claudia Oliva on 13/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Fotos : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    
    IBOutlet UIImageView *imagenView;
}

-(IBAction)abrirGaleria:(id)sender;
-(IBAction)tomarFoto:(id)sender;

@end
