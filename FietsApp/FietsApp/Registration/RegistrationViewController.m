

#import "RegistrationViewController.h"

@interface RegistrationViewController ()

@end

@implementation RegistrationViewController

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
    self.title = @"Registreren";
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width, scrollView.frame.size.height);
    // Do any additional setup after loading the view from its nib.
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    scrollView.contentSize = CGSizeMake(scrollView.contentSize.width, scrollView.contentSize.height+100);
    if (textField.tag == 3) {
        scrollView.contentOffset = CGPointMake(0, 80);
    }
    [UIView commitAnimations];

    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    scrollView.contentOffset = CGPointMake(0, 0);
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width, scrollView.frame.size.height);
    [UIView commitAnimations];
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
