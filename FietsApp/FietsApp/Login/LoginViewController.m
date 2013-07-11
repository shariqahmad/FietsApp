
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

-(IBAction)obClickLogin:(id)sender {
    NSString *xmlString = [NSString stringWithFormat:@"<?xml version=\"1.0\" encoding=\"utf-8\"?>"
                           "<vo:UserVO xmlns:vo=\"eu.luminext.luminizer4.model.vo.*\" xmlns:local=\"localname\""
                           "xmlns:arr=\"mx.collections.*\" local:name=\"user\" id=\"72\" username=\"%@\" voornaam=\"gldadmin\""
                           "achternaam=\"gldadmin\" tussenvoegsel=\"\" email=\"\" organizationId=\"3\" selected=\"\" active=\"true\""
                           "autorizationRole=\"ROLE_ADMIN\" areaalgroepId=\"3\" sessionId=\"5e4vuvingguue06hh444hokab0\">"
                           "<arr:ArrayCollection local:name=\"arealen\">"
                           "<vo:AreaalVO xmlns:vo=\"eu.luminext.luminizer4.model.vo.*\" xmlns:local=\"localname\" local:name=\"areaal\""
                           "id=\"37\" areaalStructureId=\"PROVINCIE\" naam=\"Provincie Gelderland\" wgs84Lat=\"52.165672056635\"" "wgs84Lon=\"5.9106131420625\" mapZoomLevel=\"10\">"
                           "<vo:OrganisationVO local:name=\"organisation\" id=\"3\" naam=\"Provincie Gelderland\" code=\"Provincie Gelderland\"" "timeOffset=\"-01:00\" configUrl=\"config/gelderland_test.xml\"/>"
                           "</vo:AreaalVO>"
                           "</arr:ArrayCollection>"
                           "<vo:OrganisationVO local:name=\"organisation\" id=\"3\" naam=\"Provincie Gelderland\" code=\"Provincie Gelderland\"" "timeOffset=\"-01:00\" configUrl=\"config/gelderland_test.xml\"/>"
                           "</vo:UserVO>",self.userName_TextField.text];
    
    NSString *xmlErrorString = [NSString stringWithFormat:@"<vo:ErrorVO xmlns:vo=\"eu.luminext.luminizer4.model.vo.*\""
                            "xmlns:local=\"localname\"xmlns:arr=\"mx.collections.*\" name=\"Login\""
                            "type=\"PROCEDURAL\" message=\"Gebruikersnaam of wachtwoord incorrect.\""
                            "/>"];
    
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Message" message:xmlString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//    [alert show];
    
    NSLog(@"xml data : %@",xmlString);
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
