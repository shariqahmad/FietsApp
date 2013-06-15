
#import "LoginViewController.h"
#import "RegistrationViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Aanmelden";
    self.preRedioButton = self.stadskanaalButton;
    self.stadskanaalButton.selected = YES;
    self.preServerRedioButton = self.testserverButton;
    self.testserverButton.selected = YES;
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onClickRegistrationButton:(id)sender {
    
    RegistrationViewController *registrationViewController = [[RegistrationViewController alloc] init];
    [self.navigationController pushViewController:registrationViewController animated:YES];
    
}

-(IBAction)onClickLoginButton:(id)sender {
    
}

-(IBAction)onClickRedioButton:(id)sender {
    UIButton *button = (UIButton *)sender;
    self.preRedioButton.selected = NO;
    button.selected = YES;
    self.preRedioButton = button;
}

-(IBAction)onClickServerRedioButton:(id)sender {
    UIButton *button = (UIButton *)sender;
    self.preServerRedioButton.selected = NO;
    button.selected = YES;
    self.preServerRedioButton = button;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
