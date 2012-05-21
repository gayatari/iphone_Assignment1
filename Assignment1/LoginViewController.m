//
//  LoginViewController.m
//  Assignment1
//
//  Created by nachi on 21/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LoginViewController.h"

@implementation LoginViewController
@synthesize lebelCheck;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [textUser release];
    textUser = nil;
    [textPass release];
    textPass = nil;
    [self setLebelCheck:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;//(interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [textUser release];
    [textPass release];
    [lebelCheck release];
    [super dealloc];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textUser resignFirstResponder];
    [textPass resignFirstResponder];
    return YES;
}
- (IBAction)LoginCheck:(id)sender {
    if ([textUser.text isEqual:@"gayatri"] && [textPass.text isEqual:@"gayatri" ]) {
          lebelCheck.text=@"Login Successful";
    } else {
        lebelCheck.text=@"Invalid Username Password";
    }
}
@end
