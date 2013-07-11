

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic,retain) IBOutlet UITextField *userName_TextField;
@property (nonatomic,retain) IBOutlet UITextField *Password_TextField;
@property (nonatomic,retain) IBOutlet UIButton *stadskanaalButton;
@property (nonatomic,retain) IBOutlet UIButton *velperenghButton;
@property (nonatomic,retain) IBOutlet UIButton *stoombootwegButton;
@property (nonatomic,retain) IBOutlet UIButton *customButton;
@property (nonatomic,retain) IBOutlet UIButton *testserverButton;
@property (nonatomic,retain) IBOutlet UIButton *localhostButton;
@property (nonatomic,retain) UIButton *preRedioButton;
@property (nonatomic,retain) UIButton *preServerRedioButton;



-(IBAction)onClickRegistrationButton:(id)sender;

-(IBAction)onClickLoginButton:(id)sender;


-(IBAction)onClickRedioButton:(id)sender;

-(IBAction)onClickServerRedioButton:(id)sender;

-(IBAction)obClickLogin:(id)sender;


@end
