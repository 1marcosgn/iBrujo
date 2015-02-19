//
//  Contacto.h
//  iBrujo
//
//  Created by Claudia Oliva on 13/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>

@interface Contacto : UIViewController{
    
    IBOutlet UITextView *textfield;
    IBOutlet UILabel *label;
    
    
}

-(void)Consejo;

-(int)Aleatorio;

-(IBAction)OtroConsejo:(id)sender;

- (IBAction)showTweetSheet;

@end
