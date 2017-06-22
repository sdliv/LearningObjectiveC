//
//  ViewController.m
//  Objective-C-Tutorial-2
//
//  Created by Sean on 6/21/17.
//  Copyright © 2017 Sean. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextfield;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextfield;
@property (weak, nonatomic) IBOutlet UILabel *notificationLabel;

@end

@implementation ViewController

- (IBAction)loginAction:(id)sender {
    
    BOOL isUserEqual = [self.username isEqualToString:[self.usernameTextfield text]];
    BOOL isPasswordEqual = [self.password isEqualToString:[self.passwordTextfield text]];
    
    if (isUserEqual && isPasswordEqual) {
        NSLog(@"Success");
        [self.notificationLabel setText:@"Congratulations! You are logged in!"];
    } else {
        NSLog(@"Failure");
        [self.notificationLabel setText:@"Login failed!"];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.username = @"bob";
    self.password = @"securePassword";
    // Do any additional setup after loading the view, typically from a nib.
    
    self.passwordTextfield.secureTextEntry = YES;
    
    
    NSLog(@"%@ %@", self.username, self.password);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

@end
