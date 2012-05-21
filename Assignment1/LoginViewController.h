//
//  LoginViewController.h
//  Assignment1
//
//  Created by nachi on 21/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate>
{

    IBOutlet UITextField *textPass;
    IBOutlet UITextField *textUser;
}
- (IBAction)LoginCheck:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *lebelCheck;

@end
