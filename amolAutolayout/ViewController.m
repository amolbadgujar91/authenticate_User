//
//  ViewController.m
//  amolAutolayout
//
//  Created by amol badgujar on 14/06/1938 Saka.
//  Copyright © 1938 Saka amol badgujar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn_auth:(id)sender {
    LAContext *context = [[LAContext alloc]init];
    NSError *error = nil;
    
    if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {
      
        // auth user
        
    }
    else{
    
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Oops" message:@"Your device cannot authenticate using TouchID" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
       
        [alert show];
    }}

-(void)auth{
    LAContext *Context;

    NSError *error = nil;
    if ([Context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {
        [Context evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                localizedReason:@"Are you the device owner?"
                          reply:^(BOOL success, NSError *error) {
                              
                              if (error) {
                                  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                                                  message:@"There was a problem verifying your identity."
                                                                                 delegate:nil
                                                                        cancelButtonTitle:@"Ok"
                                                                        otherButtonTitles:nil];
                                  [alert show];
                                  return;
                              }
                              
                              if (success) {
                                  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success"
                                                                                  message:@"You are the device owner!"
                                                                                 delegate:nil
                                                                        cancelButtonTitle:@"Ok"
                                                                        otherButtonTitles:nil];
                                  [alert show];
                                  
                              } else {
                                  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                                                  message:@"You are not the device owner :("
                                                                                 delegate:nil
                                                                        cancelButtonTitle:@"Ok"
                                                                        otherButtonTitles:nil];
                                  [alert show];
                              }
                              
                          }];
        
    } else {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Your device cannot authenticate using TouchID."
                                                       delegate:nil
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil];
        [alert show];
        
    }






}


@end
