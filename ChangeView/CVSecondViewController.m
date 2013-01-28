//
// Created by twer on 1/27/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "CVSecondViewController.h"
#import "UICreate.h"
#import "Utility.h"

@implementation CVSecondViewController {

}

- (void) createUI{
    // create button1
    UICreate *uiGenerator = [[UICreate alloc] init];
    UILabel *label = [uiGenerator createUILabelWithCGRect:CGRectMake(30, 100, 200, 20) andWithTitle:@"This is from second view."];
    label.backgroundColor = UIColorFromRGB(0xCCCCCCC);
    [self.view addSubview:label];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createUI];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end